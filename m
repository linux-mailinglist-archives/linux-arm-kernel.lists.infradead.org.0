Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 233C587FF1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:28:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T82DNT5udME9XtA6dfa5wIzVbucRaXfErzl+YiKBUFE=; b=oMlLF8uVJS6Rlr
	OPj2PLuM0toHiEDj/XCCNI5odryao5/E3+hgVTReU9r/XKlo/Fx6kH2NVQlrX0l7JuacV5PwIaCQN
	uTF5T127YwfbRsa1wd8gf5YvPTmxgHmQS66e345OSxE8f12rhPNIx1+IwNpRkHTzZeezVozdtCprQ
	8sFB7PKqQv1o4pDgDlfxHI2AyT/aeAaXXqfuYIphVMhP0uIR8WippSeSZ2OTqfYWCQEqGr7eU7i07
	fy0xQ1amdLMc6DA7I7+ZiD9yHi6za2oZuXiQNl125AQItMKqDdgG4Q91JcyrKkLjNKGgMXRBxg97f
	jhULljNPISGtqB09Wr3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7kG-0001PY-AP; Fri, 09 Aug 2019 16:28:00 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7jd-0000qj-9q
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:27:22 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x79GRG2b045349;
 Fri, 9 Aug 2019 11:27:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565368036;
 bh=Ud/YD36dCD+bN44/VnWcQ46y2onOorVRIeTBCHH7/UA=;
 h=From:To:CC:Subject:Date;
 b=FHVWF8swu/6sCXNH5dqU8QcEuZOVvEu5p4QG/HT77xaasUtbSAnXaluZayXdYFcoi
 xvqbzi27NcWiYw/aIzPOzwoaBDUQ7g21UdEDEcXXBjLyIEejcaktwRkhhhfRl3ngRx
 PdUt3bzLLoIKy37OMLAuff7yqsYGZeAnnyK46Pek=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x79GRGFN049499
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 9 Aug 2019 11:27:16 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 9 Aug
 2019 11:27:15 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 9 Aug 2019 11:27:15 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x79GRFkf096384;
 Fri, 9 Aug 2019 11:27:15 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x79GRFZ10536; 
 Fri, 9 Aug 2019 11:27:15 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Ohad Ben-Cohen
 <ohad@wizery.com>
Subject: [PATCH 0/2] Minor cleanups/improvements in rpmsg-client-sample
Date: Fri, 9 Aug 2019 11:27:08 -0500
Message-ID: <20190809162710.823-1-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_092721_418595_F1D73FB2 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

The following are minor cleanup/improvement patches to the rpmsg_client_sample.
The first patch is new, and the second patch is a repost. Appreciate it if you
can pick these up for 5.4 merge window.

regards
Suman

Suman Anna (2):
  samples/rpmsg: Replace print_hex_dump() with print_hex_dump_debug()
  samples/rpmsg: Introduce a module parameter for message count

 samples/rpmsg/rpmsg_client_sample.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
