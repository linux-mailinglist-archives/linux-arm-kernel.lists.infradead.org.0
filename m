Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 158AA1C0298
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:32:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QZMGFk8N5/bsfWqv5qmweltLd33kJ1l7JNJmWCoBr14=; b=ssmZyRDdY7hvrj
	nvB2+xs1i8DhPetQX0QsqMwaFoyqGaEspAXyTf3bU3GlmcgiF7ZYc65zucEgya2iMtObkn16CuoMI
	SahGpM863L/raXy6sklJu4rH93r95qKDjyaNWlnGDEB1DERTb1gK0YCC7wBt0Es4rILo/VNheegsx
	68bG1MUxUwrrpGnEsQSLCBXYODP3Tx5kw/grIUmXEZXUrw58m8gf9JaJnWljbgH8rjlYI5S8/yd0/
	/4JOZkceM5Gu7SLLiVy9i5E9tFWxUstLQ86LiAEtgmTtpZoYBXob6GdsoVv/IhnM8J6MDYf68fBAa
	w6YEVh9H7m0g0sggHK8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUC7F-0006jS-PQ; Thu, 30 Apr 2020 16:32:49 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUC6k-0006XU-G5
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:32:19 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200430163217euoutp02a5b22dda60f8389c9dbbc85241bd70d2~Kpf-mBxhU2995729957euoutp02c
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 16:32:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200430163217euoutp02a5b22dda60f8389c9dbbc85241bd70d2~Kpf-mBxhU2995729957euoutp02c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588264337;
 bh=k0wq6ZpDeeLk6QQH6CUaGaPwWrl1xqroWz3K7qcWkqQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mmww+RJV37qDDgw29CeBIvEIJnOlE/ZDm9QB1pBIHej/18pcBg+5ZHDQqR6O04F0i
 ggJfEWVurW+zyg5tto24TBR67vvCCbK85UcCT6SCmWb6JvgV2WdOJahmiVoCiO/ATZ
 Vw50WVo7Q49FxH+4FXY6gPazUcsode3QzdwGSZpQ=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200430163216eucas1p2f9d4d1904b2021701a358b81c68ab634~Kpf-RNYMx1928719287eucas1p2F;
 Thu, 30 Apr 2020 16:32:16 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 4E.E8.61286.09DFAAE5; Thu, 30
 Apr 2020 17:32:16 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200430163216eucas1p14e1529fdfbdd3663a5fdf3c9998e060b~Kpf_8hz6A3218332183eucas1p1i;
 Thu, 30 Apr 2020 16:32:16 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200430163216eusmtrp154ab2438088e1fce38831cb8111b940f~Kpf_5aP0t2557325573eusmtrp1b;
 Thu, 30 Apr 2020 16:32:16 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-a2-5eaafd90db74
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id BF.FE.08375.09DFAAE5; Thu, 30
 Apr 2020 17:32:16 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200430163216eusmtip180f320c6ce70e7a7286911527d5a2c53~Kpf_t4NKT1208212082eusmtip1R;
 Thu, 30 Apr 2020 16:32:16 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will.deacon@arm.com>, Mark Rutland <mark.rutland@arm.com>, Thomas Gleixner
 <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov
 <bp@alien8.de>, x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] arm64: kexec_file: print appropriate variable
Date: Thu, 30 Apr 2020 18:31:41 +0200
Message-Id: <20200430163142.27282-2-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200430163142.27282-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA01SaUhUYRTte5tPbexzMrzYIk36I6NFKnlgKxU8qCALCiKtqR62uMQ8l0xy
 qYwyc8QxLTfGQXOYNG3GxMQmmyhNQx0jbcKw0gwtldRSs83XM+rfueeee+75Pi5LKntpL/Z4
 RJSgiVCHqRgXqvrJZOvyjB+mkFUNRX5cQ2cNzRV9aqK50cqfDDd8Mw1x2Xc8uW5rKcE5bEbE
 mXs6aO55bT7DlXTaCa69Xk9w3x9MUpzFfI3kOl5ZGa7/cyPFTVT20JswP56STvFlhWWIN5su
 M3xXRx3DD7W0OPFvbBaKtxQn8sPWFwyfXmVC/Kh5Ed94YYze5brfZd1RIex4jKBZueGQy7GU
 tiHyVKnitKPvHpWEsl1TkTMLeA1cKih3SkUurBIbETQP19NyMYZAO2idKUYRJNt10zL2z0jJ
 FVeZL0XQVp7LyMUHBD1NU06SL4M3g7akkZawB3YQcF2/ScIkziTAqPOR8Fy8Dd48/PpHT2Ff
 6NdOkdICBQ6E1soAOZ435CU3MxJ2xuug5JadlLACu8PTG72UhOdgPyg710nJ9t5w/m4eKeUB
 XMBCSpadkENvhdbPguw5FwYaqpxkvACadWmULEkEXWaAPJqGoDp/gpI1gdDV8o2RNCReChW1
 K2V6M9T3Ppn5Ejd4OeguJ3CDzOocUqYVcOmiUlb7wG1t3YyhF1wdMKIMpMr97y25/+XP/bdL
 j0gT8hSixfBQQfSPEGJXiOpwMToidMWRyHAzmr695p8NIzXoS/thG8IsUs1WsGZTiJJWx4hx
 4TYELKnyULwNnqYUR9VxZwRN5EFNdJgg2tB8llJ5KlYb+oOVOFQdJZwUhFOC5m+XYJ29ps9E
 DLQ4JxkresPqDHFxCeke5fvKdhDjHx31J5ZttKyejAoZ2bJ74p0+LWFeZ8xFHZFkNeZ5eO+Z
 v3jhkV9r/fueac/ef+Q5K+hxpD641o0urhpz31ZXGLz3vf3TEtW7AwexwxCURfnuXL89/rVh
 rGmNISP+1vO2op6c2Dkfu82HAnxUlHhM7e9HakT1b+KP+SB3AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrOIsWRmVeSWpSXmKPExsVy+t/xu7oT/q6KM9j1T8Di+PUdrBYL35xi
 tfi84R+bxftlPYwW0zaKW9zft5zJ4uahFYwWmx5fY7W4vGsOm8XS6xeZLC4dWMBk8Wf/TxaL
 zZumMltcu7WPzeLlxxMsFj82PGZ1EPD43trH4rFm3hpGj02rOtk87lzbw+bx7tw5do8Hhzaz
 eGxeUu/xft9VNo++LasYPT5vkvM40fKFNYA7Ss+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRS
 z9DYPNbKyFRJ384mJTUnsyy1SN8uQS+j9cI75oLlvBU3n+1kaWCcxt3FyMEhIWAisbQbyOTi
 EBJYyiix995vZoi4lMTKueldjJxAprDEn2tdbBA1Txklbj7tYwdJsAk4SvQvPcEKkhAReMwk
 sfTTbjCHWWAak8ThaWuZQaqEBVwlHhz8BtbBIqAq8bIfYgOvgLXE+Q1mEBvkJWY3nmYDsTkF
 bCSWrr4I1iokkCsxac80MJtXQFDi5MwnLCCtzALqEuvnCYGE+QW0JNY0XWcBsZmBxjRvnc08
 gVFoFpKOWQgds5BULWBkXsUoklpanJueW2yoV5yYW1yal66XnJ+7iREY6duO/dy8g/HSxuBD
 jAIcjEo8vBybVsUJsSaWFVfmHmKU4GBWEuF9GAsU4k1JrKxKLcqPLyrNSS0+xGgK9OVEZinR
 5HxgEsoriTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cC4cLvflpsZ
 Zysyur9t6f7Ms/Z+iVg+95uwHs8tiieq+DQsy4uNBE5uNDrJFezI/e/4PKXYX05PZn88ERkZ
 1XHONd3FLOnmUd9pK47drJ21OMLmhuiJk0u3Rm0tDdZ7VK70wXXZclWulBuZLstb+jYfqxAK
 UmL2PzRv3cVs9dg5j7c+nWLIFH1CiaU4I9FQi7moOBEAruFe6woDAAA=
X-CMS-MailID: 20200430163216eucas1p14e1529fdfbdd3663a5fdf3c9998e060b
X-Msg-Generator: CA
X-RootMTR: 20200430163216eucas1p14e1529fdfbdd3663a5fdf3c9998e060b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200430163216eucas1p14e1529fdfbdd3663a5fdf3c9998e060b
References: <20200430105034.17513-1-l.stelmach@samsung.com>
 <20200430163142.27282-1-l.stelmach@samsung.com>
 <CGME20200430163216eucas1p14e1529fdfbdd3663a5fdf3c9998e060b@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_093218_668673_E3F6F45C 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Bhupesh Sharma <bhsharma@redhat.com>,
 =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>,
 James Morse <james.morse@arm.com>,
 Thiago Jung Bauermann <bauerman@linux.vnet.ibm.com>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHZhbHVlIG9mIGtidWYtPm1lbXN6IG1heSBiZSBkaWZmZXJlbnQgdGhhbiBrYnVmLT5idWZz
eiBhZnRlciBjYWxsaW5nCmtleGVjX2FkZF9idWZmZXIoKS4gSGVuY2UgYm90aCB2YWx1ZXMgc2hv
dWxkIGJlIGxvZ2dlZC4KCkZpeGVzOiA1MmIyYThhZjc0MzYwICgiYXJtNjQ6IGtleGVjX2ZpbGU6
IGxvYWQgaW5pdHJkIGFuZCBkZXZpY2UtdHJlZSIpCkZpeGVzOiAzNzUxZTcyOGNlZjI5ICgiYXJt
NjQ6IGtleGVjX2ZpbGU6IGFkZCBjcmFzaCBkdW1wIHN1cHBvcnQiKQpDYzogQUtBU0hJIFRha2Fo
aXJvIDx0YWthaGlyby5ha2FzaGlAbGluYXJvLm9yZz4KQ2M6IEphbWVzIE1vcnNlIDxqYW1lcy5t
b3JzZUBhcm0uY29tPgpDYzogQmh1cGVzaCBTaGFybWEgPGJoc2hhcm1hQHJlZGhhdC5jb20+ClNp
Z25lZC1vZmYtYnk6IMWBdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+Ci0t
LQogYXJjaC9hcm02NC9rZXJuZWwvbWFjaGluZV9rZXhlY19maWxlLmMgfCA2ICsrKy0tLQogMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2tlcm5lbC9tYWNoaW5lX2tleGVjX2ZpbGUuYyBiL2FyY2gvYXJtNjQva2Vy
bmVsL21hY2hpbmVfa2V4ZWNfZmlsZS5jCmluZGV4IGI0MGMzYjBkZWY5Mi4uNWViYjIxYjg1OWI0
IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9tYWNoaW5lX2tleGVjX2ZpbGUuYworKysg
Yi9hcmNoL2FybTY0L2tlcm5lbC9tYWNoaW5lX2tleGVjX2ZpbGUuYwpAQCAtMjg0LDcgKzI4NCw3
IEBAIGludCBsb2FkX290aGVyX3NlZ21lbnRzKHN0cnVjdCBraW1hZ2UgKmltYWdlLAogCQlpbWFn
ZS0+YXJjaC5lbGZfaGVhZGVyc19zeiA9IGhlYWRlcnNfc3o7CiAKIAkJcHJfZGVidWcoIkxvYWRl
ZCBlbGYgY29yZSBoZWFkZXIgYXQgMHglbHggYnVmc3o9MHglbHggbWVtc3o9MHglbHhcbiIsCi0J
CQkgaW1hZ2UtPmFyY2guZWxmX2hlYWRlcnNfbWVtLCBoZWFkZXJzX3N6LCBoZWFkZXJzX3N6KTsK
KwkJCSBpbWFnZS0+YXJjaC5lbGZfaGVhZGVyc19tZW0sIGtidWYuYnVmc3osIGtidWYubWVtc3op
OwogCX0KIAogCS8qIGxvYWQgaW5pdHJkICovCkBAIC0zMDUsNyArMzA1LDcgQEAgaW50IGxvYWRf
b3RoZXJfc2VnbWVudHMoc3RydWN0IGtpbWFnZSAqaW1hZ2UsCiAJCWluaXRyZF9sb2FkX2FkZHIg
PSBrYnVmLm1lbTsKIAogCQlwcl9kZWJ1ZygiTG9hZGVkIGluaXRyZCBhdCAweCVseCBidWZzej0w
eCVseCBtZW1zej0weCVseFxuIiwKLQkJCQlpbml0cmRfbG9hZF9hZGRyLCBpbml0cmRfbGVuLCBp
bml0cmRfbGVuKTsKKwkJCQlpbml0cmRfbG9hZF9hZGRyLCBrYnVmLmJ1ZnN6LCBrYnVmLm1lbXN6
KTsKIAl9CiAKIAkvKiBsb2FkIGR0YiAqLwpAQCAtMzMyLDcgKzMzMiw3IEBAIGludCBsb2FkX290
aGVyX3NlZ21lbnRzKHN0cnVjdCBraW1hZ2UgKmltYWdlLAogCWltYWdlLT5hcmNoLmR0Yl9tZW0g
PSBrYnVmLm1lbTsKIAogCXByX2RlYnVnKCJMb2FkZWQgZHRiIGF0IDB4JWx4IGJ1ZnN6PTB4JWx4
IG1lbXN6PTB4JWx4XG4iLAotCQkJa2J1Zi5tZW0sIGR0Yl9sZW4sIGR0Yl9sZW4pOworCQkJa2J1
Zi5tZW0sIGtidWYuYnVmc3osIGtidWYubWVtc3opOwogCiAJcmV0dXJuIDA7CiAKLS0gCjIuMjUu
MAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
