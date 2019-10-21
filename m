Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D56DF63D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 21:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OXiVYr/q0ilMdOi4IZfRp//IrhPbX7hPoIVDFfDAQK8=; b=pa6xcnxnlpyLTv
	0YL2on3AeyBFkVuZ8+7+DxBN4P0XY6eIkOG6t5YwYiEfcMiTuIOugX1JPuBHF85E90qlHxuNf+itU
	Q8Mn1XMrPfDg7M8bSQmBEqBQGpOgbEiKh8NZPtyeMaAlkVWvVAl9TdXS7xteafD4ymfqpVZwA24ha
	gn/Z5ipK7ZZdvRyXO6Fn5Dq+BtBuAbmnmtdb1tR4HkSwjJi7ZJU+a9SOtzb7ir1/D/l2byF1jx39h
	h5eWZYRroewKVs6bLiki6/Sq1/nSTnXWY2/a9e8nUMkKMee9Yk08DDYFeIEMtkc0//L04iBQGpVpR
	Eb7ejyZVfJlHh+QZoe0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMdgF-0004R4-72; Mon, 21 Oct 2019 19:49:27 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMdg5-0004QX-4T
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 19:49:18 +0000
Received: from pps.filterd (m0148460.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9LJnDsv008602
 for <linux-arm-kernel@lists.infradead.org>; Mon, 21 Oct 2019 12:49:14 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=facebook;
 bh=uMPLZudvHw0j6sIKfNqOlx3Nki++v8QXEdIUUJe1BFI=;
 b=K6UDTZNuiriKj4IUNnFY+YcJAv6qD6Mp3tIPVNwx06ynkCYc7iKrcSN6Sy17hFDpBMZy
 NwLc4XJwhS1VjHTos2fEdxYAluNVkdLG+lvNn3KGREED3ty1nav3gTbMU+VQbE110rvX
 C7ayHO7i023WbUjNtKaRAfKLKWTxzbppVrY= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by mx0a-00082601.pphosted.com with ESMTP id 2vshwr8bpw-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 21 Oct 2019 12:49:14 -0700
Received: from 2401:db00:12:9028:face:0:29:0 (2620:10d:c0a8:1b::d) by
 mail.thefacebook.com (2620:10d:c0a8:83::4) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Oct 2019 12:49:05 -0700
Received: by devvm1794.vll1.facebook.com (Postfix, from userid 150176)
 id B14F864C3C92; Mon, 21 Oct 2019 12:49:03 -0700 (PDT)
Smtp-Origin-Hostprefix: devvm
From: Tao Ren <taoren@fb.com>
Smtp-Origin-Hostname: devvm1794.vll1.facebook.com
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
 <openbmc@lists.ozlabs.org>
Smtp-Origin-Cluster: vll1c12
Subject: [PATCH 0/4] ARM: dts: aspeed: add dtsi for Facebook AST2500 Network
 BMCs
Date: Mon, 21 Oct 2019 12:48:16 -0700
Message-ID: <20191021194820.293556-1-taoren@fb.com>
X-Mailer: git-send-email 2.17.1
X-FB-Internal: Safe
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-21_05:2019-10-21,2019-10-21 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 mlxlogscore=548
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 adultscore=0 mlxscore=0
 spamscore=0 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1908290000 definitions=main-1910210190
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_124917_304042_A57E87A2 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tao Ren <taoren@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch series adds "facebook-netbmc-ast2500-common.dtsi" which defines
devices that are common cross all Facebook AST2500 Network BMC platforms.
The major purpose is to minimize duplicated device entries among Facebook
Network BMC dts files.

Patch #1 (of 4) adds "facebook-netbmc-ast2500-common.dtsi" file, and the
remaining 3 patches update CMM, Minipack and Yamp device tree to consume
the new dtsi file.

Tao Ren (4):
  ARM: dts: aspeed: add dtsi for Facebook AST2500 Network BMCs
  ARM: dts: aspeed: cmm: include dtsi for common network BMC devices
  ARM: dts: aspeed: minipack: include dtsi for common network BMC
    devices
  ARM: dts: aspeed: yamp: include dtsi for common network BMC devices

 arch/arm/boot/dts/aspeed-bmc-facebook-cmm.dts | 66 ++++---------
 .../boot/dts/aspeed-bmc-facebook-minipack.dts | 59 ++++--------
 .../arm/boot/dts/aspeed-bmc-facebook-yamp.dts | 62 +-----------
 .../dts/facebook-netbmc-ast2500-common.dtsi   | 96 +++++++++++++++++++
 4 files changed, 136 insertions(+), 147 deletions(-)
 create mode 100644 arch/arm/boot/dts/facebook-netbmc-ast2500-common.dtsi

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
