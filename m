Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4550B11C104
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 00:56:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hUuoAnZ6xy5Ifcj3CdPmFON6GRp9Pba92fD7x9+mKQg=; b=Ff0bRgsuAA5qp2
	MYCKmGVFlYESngpqS/yctfL8LR6yF9xzzlFaxgspFq+GTWXH7h1U15DHxAfdoeHJLJGTa2Jf+et67
	Mgio17WdftJRxZwf/lsKfKUjVAPzX9UI40005l7Dw9UA46gfSwZEXaQYZ3JWwvsEk3M315Ye8XQBa
	6tnMnka/SaKqEonWCfrSjidKWgnIa7gJgr/zpIMn0nhIn7+2Z3axiWCDa8iyOGRBl4R+6lDTwPmrW
	tCAFQxi7ppFSfwat2lbFBlQnzHT74EPpmlSmJas9XyScLnuJim0Fu7TPs4JdAIbTsubTip3BDLsI0
	cghWXQAffa0szxgK2ScQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifBq0-0004TX-Hj; Wed, 11 Dec 2019 23:56:12 +0000
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifBnI-0000ti-Lj; Wed, 11 Dec 2019 23:53:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576108397;
 bh=7pQcYbT5CQoEEaxvWi8Uu1MkcuZw52tCD3i8PVSaiP0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=I1puRLyA2WAJfJ1s8no6Dyz/jMFM+Lhw0Yx5hubaBqNqiwHsTWgCgpNOCLNtJUz3I
 6oJ7nJlRK7wbGM8oNxFcsDCeGR7ejZMiKbnFVUXtQ4ewro+e0C0/C/yABfrYPgycVx
 fp3PUyp8b1Jkp2x4M55FxOxPfxmUfBQAIXdq0Tek=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from localhost.localdomain ([89.204.139.166]) by smtp.web.de
 (mrweb101 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0MRCrb-1iITxr2kut-00UcEf; Thu, 12 Dec 2019 00:53:16 +0100
From: Soeren Moch <smoch@web.de>
To: Kalle Valo <kvalo@codeaurora.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 7/9] brcmfmac: not set mbss in vif if firmware does not
 support MBSS
Date: Thu, 12 Dec 2019 00:52:51 +0100
Message-Id: <20191211235253.2539-8-smoch@web.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211235253.2539-1-smoch@web.de>
References: <20191211235253.2539-1-smoch@web.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ydPMbbLZaxGnMRPj9cpe5yDs3Qub8wc2zlvo+FhzRwhJe6CeWja
 ZCPy1SNdvscy7jaRyoNSIbG0RsFSe4egx9rjGpNd4NoevT6JFdb0HCGhS/NAjXoMCF6AAa2
 l6pycAH9BIM/H8KcH/tuyLXVKriNd7KDDiap0vDs/ScJ/nWDZEKMQTAQ8Y5WtbY572+Bhwp
 ba2aIIocLz3hJIpxei3IQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qEBdN5KF0nw=:kNLWSGjSFVvCh01f/tAcNY
 kahsPKtuaZhGgyIZphgzN4umulzK0+fS5Le5P/s5u9RF5rt4s65qL7VnedHmG/i3QIIZWEe6h
 +osDYMfBrw1iybaSyArv9Zy0MT4YOx1Td89/Pd2lrlriCRngPupTyOtbdhARFyaybX0Fg88OJ
 6VVvQ6Y3I7znaxSmWHwWpLJmUG8jfsP0zJ1uqBrvj6FOAzEDSkeZfFAMWv+KyHao8Ji+gigVX
 +d8/rfpv/rkJdxdBuCzN712HEwZk79aWJBG6Xq98PE1ajcMla310phwE8rnNBcFrUB2qCfiMF
 eGe99wPA57fWWQTFRAD4mAr+IXbk7uQ+gCcPQgnTwXEEDk2GrdEmII4C0jpSrdNLKUI0+CL9e
 SgV9td71GBhk+qGgd7eJcionSoFe0Zi7XqzGSDDqjSDpc8Rgy7oRgPv82V8W/AsxRBVyXRhEO
 2e2Pi9H6Qe93MRW8yKNfkhg8A7vsmw25tYKO1j6myN3TS5DMQM4hhpmDRQHsECNlzWXcS3RT/
 ep6JgYFDxyw+gnyJofAjOIr3oaFUz6ZnZJQIZmFO8NQBtVVGL4MOADYbZMAWEWlpiohd0bcip
 58r+0QNJPD97PRjF9iQYc4sDZRgkMDifIcYXKT7QEUxn3Dcq0vwQDcdbX5r8i4JuLBEIkFvIT
 F1XWKbMI7hyV8ZS3HWO3LtHzmUAMFhZWEq8c3BjULmhrf1l3LEcW6uvQ/Dzh879nk5JrMvs44
 IoUJFeJg6XvgoFPGbeNM1GpzUGO9O0ibNmkWTi+gRozt/AEe8GyyD06MXFRowoCtrMDppgaFO
 OErSrflt0SmeP9utL30vMPxlB3i3xH9z8DfsmbMnTNWn/EDLEntHvFdstbvQdWXCsStEzU/VU
 LjC/hPwxJEbOCc0Ea8TXZt/wW0LZFZ4aPQDc66dNvmw/d0XhwXfwILiu/Wvv735rWvDJ4wosq
 4G+tuzIvIMcOjyyd3E3EEjxoaQVmWL60mqCAmIHJzqjOflePGVFKI8iwPIfGHfGcktM3HEfyD
 dptsq6dZd/9ieqUmruWSe8e5jFYuyzjbrkFIIUP6s8pftUBBkySVwG+gzxXoL4nQPAdQtC+qF
 uDbm+nDCX8qQ3Fh35Hjdxco14pF+z36eaWgcTlGoNtiouAYOT2tmfyquPtyM1UV3bPgCWEvHq
 xu3Sfub7wRdxohQvE2VLLnjRhqzcUI05JrvH4un3wvdSJGY5G5uWKfKgaIiuACjDY2EfR6s52
 cZ0ft2+k7BfFKOVcpPrzBN+FoITLSodCaik3LpQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_155325_018980_51D20A54 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
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
Cc: brcm80211-dev-list.pdl@broadcom.com,
 Arend van Spriel <arend.vanspriel@broadcom.com>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, linux-wireless@vger.kernel.org,
 Hante Meuleman <hante.meuleman@broadcom.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 Wright Feng <wright.feng@cypress.com>, brcm80211-dev-list@cypress.com,
 linux-arm-kernel@lists.infradead.org, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wright Feng <wright.feng@cypress.com>

With RSDB mode, FMAC and firmware are able to create 2 or more AP,
so we should not set mbss in vif structure if firmware does not
support MBSS feature.

Signed-off-by: Wright Feng <wright.feng@cypress.com>
Signed-off-by: Soeren Moch <smoch@web.de>
Reviewed-by: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
---
changes in v2:
- add missing s-o-b
- add review tag received for v1

Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Arend van Spriel <arend.vanspriel@broadcom.com>
Cc: Franky Lin <franky.lin@broadcom.com>
Cc: Hante Meuleman <hante.meuleman@broadcom.com>
Cc: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
Cc: Wright Feng <wright.feng@cypress.com>
Cc: linux-wireless@vger.kernel.org
Cc: brcm80211-dev-list.pdl@broadcom.com
Cc: brcm80211-dev-list@cypress.com
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
index 9d9dc9195e9e..6eb3064c3721 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
@@ -5363,6 +5363,7 @@ struct brcmf_cfg80211_vif *brcmf_alloc_vif(struct brcmf_cfg80211_info *cfg,
 	struct brcmf_cfg80211_vif *vif_walk;
 	struct brcmf_cfg80211_vif *vif;
 	bool mbss;
+	struct brcmf_if *ifp = brcmf_get_ifp(cfg->pub, 0);

 	brcmf_dbg(TRACE, "allocating virtual interface (size=%zu)\n",
 		  sizeof(*vif));
@@ -5375,7 +5376,8 @@ struct brcmf_cfg80211_vif *brcmf_alloc_vif(struct brcmf_cfg80211_info *cfg,

 	brcmf_init_prof(&vif->profile);

-	if (type == NL80211_IFTYPE_AP) {
+	if (type == NL80211_IFTYPE_AP &&
+	    brcmf_feat_is_enabled(ifp, BRCMF_FEAT_MBSS)) {
 		mbss = false;
 		list_for_each_entry(vif_walk, &cfg->vif_list, list) {
 			if (vif_walk->wdev.iftype == NL80211_IFTYPE_AP) {
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
