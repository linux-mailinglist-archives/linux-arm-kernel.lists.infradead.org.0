Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAD7194A72
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 22:23:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Lr6J8p5goegUIVIWXiHdp5Bz+vtsSYRimxkBhp7adiI=; b=PK2
	pdsyYyg8dDVCDTONsvMMLjubKKcJ76kbdeSNFKjBBWL5Q2401xrpKCL3m2T3BTrg5cAeRIioHvwsc
	exKkJETjH6GdICxyA4l6ACL/ZpN8bZVV4JB26I1RtSfawIQjlSZ3JR+x4pSBSflTkvM1N6I8EnVsL
	szIr6wqP6RAYADNLU5OyZjUxxEfwfB230r0IKOd49UnHlHASQPUWb3Ur6f8g0GrHjC4VaVsRgRjG0
	AqzMiXIDe8e2amgiVRE9d+c7cr9BTZ0f52kApL9J/JCHbvY64MuVWwDewwSMYN2b72VFCSuDsEQLP
	Drmz59x3IXqyfHbVu3qhRfbvUAUOfPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHZxy-0005wo-0u; Thu, 26 Mar 2020 21:23:06 +0000
Received: from mr85p00im-zteg06021901.me.com ([17.58.23.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHZxo-0005w5-Cm
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 21:22:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
 t=1585257771; bh=1giZd2owGIj9cpPaRlxOyrqDeGF8FFFXZCqKHweT8Kc=;
 h=From:To:Subject:Date:Message-Id;
 b=KCSInXcjW3AwTJydl6bt+xudN4Eo8Vv+9YUY9qh89kVQihw7Na5Y/442yuCgpNPeQ
 UcLWOX6DvxX1l9TFfGk7nK/mwnFcG6LTDvgM6nJNldp9Q+cnEQ2ZjS37ctQf42nUws
 svtkyvF5N6ddzt0fhe7E+jRnYf871Exr8/GH8Kp3hHfqHABVbg5iXMJnRaN2FIWIGg
 BOVPzU4+HNkmpBkJ3RdCOnaO9cuDCTsbKnzK+hZo+uecfTvY5bo/2pyVnCfI2Fk4wg
 VEGZ9W8Tf8VAye3eeFMF+TZglM8YDGsO4zdLj3lN0Y7EcRH4dtHI2JAb1jcfmuPMta
 E+5jRVYJbHxAg==
Received: from localhost (101.220.150.77.rev.sfr.net [77.150.220.101])
 by mr85p00im-zteg06021901.me.com (Postfix) with ESMTPSA id 6A424720842;
 Thu, 26 Mar 2020 21:22:51 +0000 (UTC)
From: Alain Volmat <avolmat@me.com>
To: Patrice Chotard <patrice.chotard@st.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] i2c: i2c-st: fix missing struct parameter description
Date: Thu, 26 Mar 2020 22:22:43 +0100
Message-Id: <20200326212243.17363-1-avolmat@me.com>
X-Mailer: git-send-email 2.17.1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2020-03-26_13:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=968 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-2003260156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_142256_445145_EED6FA5C 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [17.58.23.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avolmat[at]me.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: avolmat@me.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix a missing struct parameter description to allow
warning free W=1 compilation.

Signed-off-by: Alain Volmat <avolmat@me.com>
---
 drivers/i2c/busses/i2c-st.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/i2c/busses/i2c-st.c b/drivers/i2c/busses/i2c-st.c
index 54e1fc8a495e..f7f7b5b64720 100644
--- a/drivers/i2c/busses/i2c-st.c
+++ b/drivers/i2c/busses/i2c-st.c
@@ -434,6 +434,7 @@ static void st_i2c_wr_fill_tx_fifo(struct st_i2c_dev *i2c_dev)
 /**
  * st_i2c_rd_fill_tx_fifo() - Fill the Tx FIFO in read mode
  * @i2c_dev: Controller's private data
+ * @max: Maximum amount of data to fill into the Tx FIFO
  *
  * This functions fills the Tx FIFO with fixed pattern when
  * in read mode to trigger clock.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
