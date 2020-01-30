Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CCC14DAE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 13:43:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goaNQNqm0jWScgRlir5wgIu4ZJypsN/paiYGWDXH8vw=; b=S/FY1p4awM0hz+
	GLrkbYXw8k/rlX/4jUqbdw1xaSx9skpelLvoBJrkaFgtiUj6guTNe7L4Bi7cJN4v76iL5EzBEpGuu
	47R0HZH0TtX+Quw4WcNsATKz/coSaJh5tO+h15fn75e39MPoP+Rhc7WVQvwk9FBsoeueBQn9/5EKb
	BALNv00T0lu5/93Drxzi2xvj7YnEf1PU58hVWY1zJ8WB8eHVad2UlYN76rDwmnN3PK2L1/cYZx9Mm
	JE0WK8EXlNlLboufjmpJxV9WuHXV5d3iwCmeo4Uo8KEfK7HOZm9ix76h6tZ0ObikDqfWmtY+DcjZI
	P9DMHsSJ0HPCjwE/eq4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix9AK-0003ZO-Lv; Thu, 30 Jan 2020 12:43:24 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix9A2-0003Uy-Om
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 12:43:11 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200130124304euoutp027e91186d52904feb220efb61f7ef882d~uqq5VKMnO0695306953euoutp02h
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 12:43:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200130124304euoutp027e91186d52904feb220efb61f7ef882d~uqq5VKMnO0695306953euoutp02h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1580388185;
 bh=+P8a2fdMyzXk8luowUxelFub/dwbU2MtPQ3w1czBqRM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LQQDXpQLxlZeHlKlKIUQOfpnitWnFxtv4FuQhRs4yOKat8O1xCJkULrYrnKEgXVNF
 gGMFhQ7nHsnjf0O+084c6Avp42JkkFgQb2TEPCgSap9IwkqHCBOosZH112WsdTHMKb
 iiR1w+whOMaHQERr8TPLu+X3qJmslcmTDi0GFyNE=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200130124304eucas1p2a579180e27d6d0ad2f7e0fbb5bb06c92~uqq5FRhGh2611426114eucas1p28;
 Thu, 30 Jan 2020 12:43:04 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 83.D9.61286.85FC23E5; Thu, 30
 Jan 2020 12:43:04 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200130124304eucas1p2f3381b1009cd71cd292169d5f10265c1~uqq4krDLU1246012460eucas1p2L;
 Thu, 30 Jan 2020 12:43:04 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200130124304eusmtrp155ca62ca38ac1f64a26c76184b2bd44c~uqq4kIDIS2256122561eusmtrp1l;
 Thu, 30 Jan 2020 12:43:04 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-93-5e32cf581f1b
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id A4.3E.08375.85FC23E5; Thu, 30
 Jan 2020 12:43:04 +0000 (GMT)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200130124303eusmtip2548f372b63f47f071fa7db90415c7968~uqq4Wy6ve1492314923eusmtip2V;
 Thu, 30 Jan 2020 12:43:03 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [RFC PATCH 2/4] scripts: add get_console_base.pl
Date: Thu, 30 Jan 2020 13:42:31 +0100
Message-Id: <20200130124233.4006-2-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200130124233.4006-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpgleLIzCtJLcpLzFFi42LZduzned2I80ZxBusmqlvcPLSC0WLT42us
 Fpd3zWGzmHF+H5MDi8fmJfUefVtWMXp83iQXwBzFZZOSmpNZllqkb5fAlbF3TnDBbY6KqxMu
 sTUwrmDvYuTkkBAwkdj2+wNjFyMXh5DACkaJZWs6mSGcL4wSv9+egHI+M0r8P9/KAtPStKuZ
 DSKxnFHi5vwWVgjnOVD/jh9sIFVsAo4S/UtPsILYIgLZEpM/fmECsZkF7CUmzvoPViMsYClx
 5uxXoEM4OFgEVCV+nSsFCfMKWEkcPr4S6j55ifO968BsTgFriY+rf7NC1AhKnJz5BOwgfgEt
 iTVN11kgxstLNG+dzQzR284usW1KLoTtInGs5y4rhC0s8er4Fqj5MhKnJ/ewgJwgIVAvMXmS
 GcgrEgI9jBLb5vyAetha4s65X2wgNcwCmhLrd+lDlDtKTP6ZD2HySdx4KwhxAJ/EpG3TmSHC
 vBIdbUIQM1Qk1vXvgZonJdH7agXjBEalWUhemYXk/FkIqxYwMq9iFE8tLc5NTy02zEst1ytO
 zC0uzUvXS87P3cQITBen/x3/tIPx66WkQ4wCHIxKPLweZ4zihFgTy4orcw8xSnAwK4nwiroa
 xgnxpiRWVqUW5ccXleakFh9ilOZgURLnNV70MlZIID2xJDU7NbUgtQgmy8TBKdXAyFevmWf3
 zPimtp2CsP7E/uKJHHx8ch9ZZ54q8XC+bDxRRqxsu8Lt4I7fV1Wm7T1lV2PP5rya8dWh30ze
 kQ0v+PcGHvsoMc88cW9U8syXF55MP3n8WGL/7L/ZthNliqT+NbivZHbbKWDIVv/zyV/WPc/9
 deNu2b13npulkmC19WSS2MoTTxS8lFiKMxINtZiLihMBUXfpNhMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprEIsWRmVeSWpSXmKPExsVy+t/xe7oR543iDG4tYba4eWgFo8Wmx9dY
 LS7vmsNmMeP8PiYHFo/NS+o9+rasYvT4vEkugDlKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/I
 xFLP0Ng81srIVEnfziYlNSezLLVI3y5BL2PvnOCC2xwVVydcYmtgXMHexcjJISFgItG0q5mt
 i5GLQ0hgKaPEorWvgBIcQAkpiZVz0yFqhCX+XOuCqnnKKPFyVjcbSIJNwFGif+kJVhBbRCBX
 4tqho2BDmQXsJSbO+g9WIyxgKXHm7FewmSwCqhK/zpWChHkFrCQOH18JdYO8xPnedWA2p4C1
 xMfVv8FGCglkS3TtecUIUS8ocXLmExaQMcwC6hLr5wmBhPkFtCTWNF1ngdgqL9G8dTbzBEah
 WUg6ZiF0zEJStYCReRWjSGppcW56brGhXnFibnFpXrpecn7uJkZgfGw79nPzDsZLG4MPMQpw
 MCrx8HqcMYoTYk0sK67MPcQowcGsJMIr6moYJ8SbklhZlVqUH19UmpNafIjRFOjLicxSosn5
 wNjNK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAGMt35pJD+7Kc
 5clR+zm2Ldz3UudD0+ruya5ss353pX9Z83btg323lsadClk8v/kK46HJjYL+iZ7q15bJrxao
 elP/xyni66+/XRdO/f8S2Mli+cR2/arodnnjmTeaHki9WfC+p2NSQ9ru798mBC1bHcUzUbz5
 ll7rrzUr8lVFX/NlNq2IP++8RE+JpTgj0VCLuag4EQAXSO14pQIAAA==
X-CMS-MailID: 20200130124304eucas1p2f3381b1009cd71cd292169d5f10265c1
X-Msg-Generator: CA
X-RootMTR: 20200130124304eucas1p2f3381b1009cd71cd292169d5f10265c1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200130124304eucas1p2f3381b1009cd71cd292169d5f10265c1
References: <20200130123934.3900-1-l.stelmach@samsung.com>
 <20200130124233.4006-1-l.stelmach@samsung.com>
 <CGME20200130124304eucas1p2f3381b1009cd71cd292169d5f10265c1@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_044307_285310_5F57F670 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmVhZCBVQVJUIGJhc2UgYWRkcmVzcyBmcm9tIGR0YiBmb3IgY29tcGlsZSB0aW1lIGNvbmZpZ3Vy
YXRpb24uCgpTaWduZWQtb2ZmLWJ5OiDFgXVrYXN6IFN0ZWxtYWNoIDxsLnN0ZWxtYWNoQHNhbXN1
bmcuY29tPgotLS0KIHNjcmlwdHMvZ2V0X2NvbnNvbGVfYmFzZS5wbCB8IDI2ICsrKysrKysrKysr
KysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKQogY3JlYXRl
IG1vZGUgMTAwNzU1IHNjcmlwdHMvZ2V0X2NvbnNvbGVfYmFzZS5wbAoKZGlmZiAtLWdpdCBzY3Jp
cHRzL2dldF9jb25zb2xlX2Jhc2UucGwgc2NyaXB0cy9nZXRfY29uc29sZV9iYXNlLnBsCm5ldyBm
aWxlIG1vZGUgMTAwNzU1CmluZGV4IDAwMDAwMDAwMDAwMC4uYzcwN2VlMzdhMTlmCi0tLSAvZGV2
L251bGwKKysrIHNjcmlwdHMvZ2V0X2NvbnNvbGVfYmFzZS5wbApAQCAtMCwwICsxLDI2IEBACisj
IS91c3IvYmluL3BlcmwgLXcKKwordXNlIHN0cmljdDsKK3VzZSBGaWxlOjpCYXNlbmFtZTsKK3Vz
ZSBGaWxlOjpTcGVjOjpGdW5jdGlvbnM7CisKK215ICREVEI9JEFSR1ZbMF07CitkaWUgIiQwOiBE
VEIgZmlsZSBub3QgZm91bmQ6ICREVEIiIHVubGVzcyAoLWYgJERUQik7CisKK215ICRzY3JpcHRz
X2Rpcj1kaXJuYW1lKCQwKTsKK215ICRmZHRnZXQ9Y2F0ZmlsZSgkc2NyaXB0c19kaXIsICdkdGMn
LCAnZmR0Z2V0Jyk7CisKK215ICRzdGRvdXRfcGF0aD1gJGZkdGdldCAgLXRzICIkRFRCIiAvY2hv
c2VuIHN0ZG91dC1wYXRoYDsKK2Nob21wICRzdGRvdXRfcGF0aDsKKworaWYgKCRzdGRvdXRfcGF0
aCA9fiBtIyhbXi9dW146XSopKD86Oi4qKSMpIHsKKwkkc3Rkb3V0X3BhdGg9YCRmZHRnZXQgLXRz
ICIkRFRCIiAvYWxpYXNlcyAkMWA7CisJY2hvbXAgJHN0ZG91dF9wYXRoOworfQorCitteSAkcmVn
ID0gYCRmZHRnZXQgLXR4ICIkRFRCIiAkc3Rkb3V0X3BhdGggcmVnYDsKK3VubGVzcyAoJHJlZyA9
fiBtL14oW1s6eGRpZ2l0Ol1dKykvKSB7CisJZGllICJCYXNlIGFkZHJlc3Mgbm90IGZvdW5kIjsK
K30KKyRyZWcgPSAkMTsKK3ByaW50ICIweCRyZWdcbiI7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
