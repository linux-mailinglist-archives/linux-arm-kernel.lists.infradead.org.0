Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D208418FC60
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 19:07:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/3dC4Er4j40kqHJ0/BlvxFPjEMa9ZDGnwGjOav57FTA=; b=NUU
	0n2Xo+l1/Rr0THvhIUfnKw/hfYc/EggbkyedwwwykJyYdWRgFFEfg8yuv20PECPdZ2rTmN9Mw/sSv
	kiYOCyBilmUCy6yzIoBf5sx3HStGeDLUM5L0Qc9jWvae82YFbKaJgM1NuMTsHHdCwVgl7tC9l808H
	2MdGpIFOLyCGOk1j7ClffR4zSWaqkQPp2PLmZM1C/YbukcEzQoJzlL8TsCYhnuIU5qa02hE8c5JP9
	CGCH3tpqszGR5Ku6AErZ//PgES2NQWBQih8ffm7gNury3NXSliTcranwe2Pt3e1d9t9rYc6Rih2t5
	Q7L9twCAC9IlX1by6rSW2aXFrmuGnFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGRUI-00006k-UM; Mon, 23 Mar 2020 18:07:47 +0000
Received: from mr85p00im-zteg06021901.me.com ([17.58.23.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGRU6-00004s-Ba
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 18:07:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
 t=1584986846; bh=Lz+pG/PsJEEZHzsgsUcnNiVD88/w5Vqoinxpr1eJOCM=;
 h=From:To:Subject:Date:Message-Id;
 b=rm/ViKCOsa5GtE+XNAmAUziuSTB0puOSkVRW/4RMLyJfC8vMPZTF/5ej20zkfOpXD
 6zCiAGw1Ron9s7aSgU2JPTVvZfcSPn9XsIVXE0xLF4lb4ENKc1UTexRikoGhPQ4Q9p
 ljFB1ne5iN60+tW9YYCjzLU/OH2Nd1vCMMWoNZwxigCVsAVDO954KgomAEzJX9Zs07
 vwxg3jIJhOAF22ck7g2JQpr0sDFttmTg7jmFAOufNIdcw9Aa2y8pTOoMg6TcXm2JoN
 OcbrXN5S/cMkUiIHEzkprdqrQK7UE9V6tJGk4BsawQli8qk2H+h9DcxlYlcVKqknaT
 KsmTZOeVmhX2Q==
Received: from localhost (101.220.150.77.rev.sfr.net [77.150.220.101])
 by mr85p00im-zteg06021901.me.com (Postfix) with ESMTPSA id 7A7EB7206B2;
 Mon, 23 Mar 2020 18:07:25 +0000 (UTC)
From: Alain Volmat <avolmat@me.com>
To: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Olof Johansson <olof@lixom.net>,
 Linus Walleij <linus.walleij@linaro.org>,
 Nathan Huckleberry <nhuck15@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Enrico Weigelt <info@metux.net>, Thomas Gleixner <tglx@linutronix.de>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] arm: sti: LL_UART updates & STiH418 addition
Date: Mon, 23 Mar 2020 19:06:37 +0100
Message-Id: <20200323180639.8481-1-avolmat@me.com>
X-Mailer: git-send-email 2.17.1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2020-03-23_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=841 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-2003230094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_110734_410722_7184DDF4 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [17.58.23.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avolmat[at]me.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: patrice.chotard@st.com, avolmat@me.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This small serie updates the STi platform LL_UART code to rely on
DEBUG_UART_PHYS/DEBUG_UART_VIRT and add the STiH418 SoC support.

Alain Volmat (2):
  arm: use DEBUG_UART_PHYS and DEBUG_UART_VIRT for sti LL_UART
  arm: sti LL_UART: add STiH418 SBC UART0 support

 arch/arm/Kconfig.debug       | 38 +++++++++++++++++++++++++-----------
 arch/arm/include/debug/sti.S | 26 ++----------------------
 2 files changed, 29 insertions(+), 35 deletions(-)



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
