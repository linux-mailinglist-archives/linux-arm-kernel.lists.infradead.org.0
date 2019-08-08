Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9EC86778
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NHev14bw8rT7h2nkCdV6oy5RkxLnOuxyXaWQ/ZXoIdw=; b=dNd6Tdn6wVlwjp
	W/sTMHXz85ZYg4nwWJzzesZaDrGt6GGDUyjbInn5cBgT4zlUvtQHmm72SF/x6AK5XynvlM26iR4vN
	GkOgz+qhTjmYIjTrzg3ki7OCGNd5aQDy9hoTv8SEhzkw07onAcuGlA9edjzuhaxAjz0zY/BJdbIdZ
	liaoKUOoZmFO37HZ26CSnGqJYKRNtw1lndLdnvcGxD6JevroD4IRptDTlw0hJjMQdRu+pWcwITOMG
	RTZYyr8bxRfKlwMX73E5K7+Soz77H/pNY0kbQ/IMceWVQi/gUwrFARkMOAimFDVz16FAO1BA4kFqT
	8u2bVZ8bl3rfFXlODh0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvlbb-0003ah-Uc; Thu, 08 Aug 2019 16:49:35 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvlbT-0003aM-6B
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 16:49:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565282955;
 bh=NyYRIlyJp1dNqY9bMLhKdZDQoswA/k6BxEUTuDZ+Zb8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=dV8YQMdchQ5RKjdA20SaoSKPKuU8G05WvMvaPIUMySCtxCIdbqnX0XC2JC+XnLud3
 SYdo8NKzhO4ZzKKqlGhgHa08DhwP++1cPzSYiJORywewgfjql0t15WfFgsuhuJL2hm
 Sg1zZdehUfG/U+LeXuL1WcH4lM6G6N/31IVucbfs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([109.90.233.87]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0Lmwpk-1iWCHf00Am-00h5Fs; Thu, 08
 Aug 2019 18:49:15 +0200
From: =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: linux-doc@vger.kernel.org
Subject: [PATCH] Documentation/arm/samsung-s3c24xx: Remove stray U+FEFF
 character to fix title
Date: Thu,  8 Aug 2019 18:48:09 +0200
Message-Id: <20190808164811.15645-1-j.neuschaefer@gmx.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:Hh+MMVrp26ugQyFj+D/l4R8ydI3JFX9v5nK/15hlhDut2Eh6Y2L
 QLxShqdo8KDJwsAdSSddpgpiCyup3PqyrM2a5LBmFDQI9C+Eqi+YKFi+Oz36OVw6zwviSk9
 VZEs46WEyXKOnAuOd9KmrKd8yx2RrwCHZuwP7N+EipYj+eYmxcIcJkVU462lmplJ93HFeZg
 lR6aVBBmQ4LJvuakhnAFA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:c6pVNIDsHNg=:FGqIiO2jLGaVGa76F74RXp
 tcUbzZT7A2Oe2urH83/b48cZWUlWW9UKIqGfjTykNm+rilrnwAq88cBHOz6Hz8p5bhBYTtNh5
 UO7O110UrafNB0hAiOJ9VeqzTor8S3K2LQc+VwdYK4dGshKqeY+QAIrURC4BGU3nDeuNTLzu4
 BF3NBaOf30B6rNE6QtHsn6yS7InHaIMlKs65YSVmxAH2kE0+Hyn8ZJ11G7/evujkUInGb5IhL
 iRobXZKV0Jqz5qQPQurj8xEyUvzfQGxkhfWucnJKZVhoW/+TV8FnylKrQIK9TY3f8Ot7ldsH5
 JqPBo/uJuB/eKCUR1j1Nj5px5LHJ1z2bPEOT3qineeJFqqhFTGKfiVNEJHg9YUNsB9vSlqlA5
 bFAQbDE6hua+ZDfxBGjzaW7mSB2E0CipOwPjmBtdx30E8a9OV2LWV3Warrm6dn7L1YJYqEEYg
 hYJ2GeWkWDCXaTlJq0K0iyE8oFXiJcIEKdej/1opQOcsN1rl0sRhmXCa1UyerECVvKtKcivrK
 ZSihTme0UhUsZLQ2QdhCbT/9Mgb0vKrEtO/Gu+cjLwjshItORUAQA6oBZAk2kirQadpMEd0vn
 aVXXhsvc9VMHUbjyVugzV0Pm0ooikDnyqyWHQ7e045GdoFAxoz+zTJlQVrieITAXzBFFXHuTb
 T4Msh2CZV15pW46AUFXHS5u1Qqp980ESjqxMvfA0i5lgMp7KjdnAfTzArDDYOAwvMmH9iR6nV
 5my/YOSccGlfbI8hX/fAeXoUIYQBP4dJSLK1qqMi7OfEZmf6Vy+L1Z5AZpCCfiV1PG6T+z8c1
 QhWN8It4w7aVMchPtxACmU9y60yI2AN+xPlQFzVnmT5rtsLkw0D6AaJwL5aeg2ukpRsOh0S6H
 DghHEl1VFRBIOH+LHmBGNGJj3Gk7G+UHUiFRhAcu2LKpRXBYcfgV1pNjXPOFEjXZLsJyYR/vt
 azrmrmCHvhDw8pl8yOwCJacZLcf1HJW9PGIcJxi9pQVIx5pjRtOlmeHEoz+ZZbLrrae9Qiyb6
 sqGQmWfI27rt/VIpfV0nT9QpBFvcdb/Q5vnk6VnPKrmlAwHyhkc4zQ0lB5MO+RMlXq1A22VKb
 IjncQgDJuNvD2Rd9RFkUz1SHjExLLhFix5jMV0Cb0D7gezwDQlKjq0rn3CchNQ/rrhvFD9+Nr
 R47+8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_094927_522352_C9846592 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (j.neuschaefer[at]gmx.net)
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
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 linux-arm-kernel@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SXQgc2VlbXMgYSBVVEYtOCBieXRlIG9yZGVyIG1hcmsgKHRoZSBsZWFzdCB1c2VmdWwga2luZCBv
ZiBCT00uLi4pIHNudWNrCmludG8gdGhlIGZpbGUgYW5kIGJyb2tlIFNwaGlueCdzIGRldGVjdGlv
biBvZiB0aGUgdGl0bGUgbGluZS4KCkJlc2lkZXMgbWFraW5nIGFybS9zYW1zdW5nLXMzYzI0eHgv
aW5kZXguaHRtbCBsb29rIGEgbGl0dGxlIGJldHRlciwgdGhpcwpwYXRjaCBhbHNvIGNvbmZpbmVz
IHRoZSBub24taW5kZXggcGFnZXMgaW4gYXJtL3NhbXN1bmctczNjMjR4eCB0byB0aGVpcgpvd24g
dGFibGUgb2YgY29udGVudHMuCgpTaWduZWQtb2ZmLWJ5OiBKb25hdGhhbiBOZXVzY2jDpGZlciA8
ai5uZXVzY2hhZWZlckBnbXgubmV0PgotLS0KIERvY3VtZW50YXRpb24vYXJtL3NhbXN1bmctczNj
MjR4eC9pbmRleC5yc3QgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2FybS9zYW1zdW5nLXMzYzI0
eHgvaW5kZXgucnN0IGIvRG9jdW1lbnRhdGlvbi9hcm0vc2Ftc3VuZy1zM2MyNHh4L2luZGV4LnJz
dAppbmRleCA1YjhhN2Y5Mzk4ZDguLmNjYjk1MWEwYmVkYiAxMDA2NDQKLS0tIGEvRG9jdW1lbnRh
dGlvbi9hcm0vc2Ftc3VuZy1zM2MyNHh4L2luZGV4LnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2Fy
bS9zYW1zdW5nLXMzYzI0eHgvaW5kZXgucnN0CkBAIC0xLDYgKzEsNiBAQAogLi4gU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKCi3vu789PT09PT09PT09PT09PT09PT09PT09PT09PQor
PT09PT09PT09PT09PT09PT09PT09PT09PT0KIFNhbXN1bmcgUzNDMjRYWCBTb0MgRmFtaWx5CiA9
PT09PT09PT09PT09PT09PT09PT09PT09PQoKLS0KMi4yMC4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
