Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C75019BE26
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 16:10:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ibcm9UO5XMUfs4yZzUOJZP/JzJRsDw2HdwUU3W+1jA=; b=IOql2teVvsN8Ux
	/An0YCTWsSRzQYbG/7Mf73eid4mrTqoqgJntS68wl6jULvUXPY2bixDZ3v1NqHQIuzOiWCI1V3W+Q
	R56LdGXgJlyzbteptNJpo1tpQ5uYGiUEMDHb9B+a2EmteZ0leViMG+VX/p73xoQ+tKC27cVfIzfP9
	sO64KKTegfre3DWf4rSMrC21wIJMgTn2XeDMaxPnBeyLj1yQegNQwBbFIKTDpeQmQ7Gd2AKdx1byx
	53h2eWCUfH289BRMS4bw3LzMKl9vO4bzKA2qhtp6xxi+2JR8NDyhKzS32VXlost47xHBPAQvtQ1I5
	HXYO9za/8/RqYdm7dadQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1WkD-0005Ef-2e; Sat, 24 Aug 2019 14:10:17 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Wk1-0004Kz-TW
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 14:10:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566655798;
 bh=Gw0uvY9zV94pNModeowkG7ft0KsjTu+9nSEiRmDoueo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=I/KsoGp7RsJ91JRFXS5dPd+dcnqIL2qgjjBYovEMV0dNcvw7qQ1UHZywX5j08VKDs
 njcR2bXyTHzj3q8LkH7zu3mi9oqNFV48pPAUaKbJtHcm67rYNWNKi5BjJl9VeCQ3D5
 nwxu2raHO3CFo8I3fDGr4aaof2cpF9AWVqFT6IF0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1N95e9-1iGDcv05OJ-0169B9; Sat, 24 Aug 2019 16:09:58 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Thierry Reding <thierry.reding@gmail.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V2 1/3] pwm: bcm2835: suppress error message for invalid
 period_ns
Date: Sat, 24 Aug 2019 16:09:46 +0200
Message-Id: <1566655788-24949-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566655788-24949-1-git-send-email-wahrenst@gmx.net>
References: <1566655788-24949-1-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
X-Provags-ID: V03:K1:fddocn95lqFR/2NouKKedgB4+IDR2qPI8KHoNbsqdP4ouU+F1eh
 j6b5ucNtQpz6aal5CGHWp1O5FRd6jNVF2ZI4swmnGYJ28hsEgBez/rEjJUs0aiXH22/bdG9
 0VxfIZbWDaxlSCGLLJ/7heooFlTXal24wuswUrhH9k/170U1dFs4xnJrTbvzIWapZ/ubujW
 EUunYkaCatNkUsQPGf0jQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4sKyPc6fcIg=:UKPqGFFRGs8RbS/7w3zeZn
 GZPqkRoyMOXlWVCiZ6oJ6GlcnyOK1ij6VzRJ/30QxMLbtW0kPyAsGMDPh6HlFw0ayWG4TG+dr
 ynrSl6w85sfUK6VhlWALYmWe5w1QdarIL0Uy0sm/G3MUxqfWkkgGhBRRoCYvMdWx8sGevH4hz
 bPL3I5H3diXukgRYox+xIZ9DLxt6hUO/0jGqYMgrgEPjQ3bTODcrmTcbsOga1fb750Vkv0MH3
 46xDmjtiYIQJCLPYIRTRBjdeF53HMk4Qa/5QfNE2x7q54mAAdcvVQ2jXFqrqA/VtCUXuBLHhz
 ZvNe5OuGZEYZOhzyqGCo0UgFWuEYAAt0dz//emGhReYxlUkBTGyDEHMzsYamyDl51d8VnJV+B
 gEub3ivyGSrGKD5zPmOODmdy49L0QTLoxYHnKZ/hxLy7nBI+vM00eIvoLTqoH0y+b9oRj4j86
 z3U/LIzOmPgH2Aq1R7Ipj3518atDOE8v1vD0KMRJpo5xjqhCKYVwBgwet0lSN4EE6KLpzFe6R
 p94vzHy1CLkriJEUECNDuCSSdlBLkZVbLGmJqxXdINRuk1n0aKLkNGcHl/tQJKkqOtBkzKY6M
 NcQMT2kxzq6T/rdAmp5N+aaIToi3smX12VORQLN/V/NeQ9KbITu9aplZOyXiJEHBzcnRHq+Qw
 OmNVMkkhEbdCzhye2d1fq+1SjIwcgFoT2d4SWxp2LDZl34kHB7c/kOVhLSkfF4lajtvCIi3ho
 Cov9V1FsKptAk5FhRsO0ujhohkaxVi4jfRqAuFaQCtU00AV2ORmHcOT6TAAIpCXuWNb5C8Cs+
 f5HC/3tT+B7FzA6JOAuCUFW/TaJ0f1a5cdrICc3z8aq7wwJF9cb6hoXV4RaS3Hoxe8TvwldwX
 jYQz2HhQphwAWJGIsmvc/al9E0Bz7gH1c/zRDPjNil6GqFF6UzVcrrVZG13UDJVFfbaSfCMyQ
 OGa1C99Qr2kXLHW4cp0mWRe3blDnRlUJvWSqHEQ2N6MtO7bUZvYuJFkEh5KRqsF4UXiQHM/EN
 6k/j9MmHJiPLom/nhopBwlCRr/QJhK1wQnpy6ADdlxonYd275NOCZpVp1mJcAvMyDuBPAYJpP
 adjny2zaBuTKwsg6ps4zBHw6L3runIuC7BNZXRn4YBjJa7akICsjwhbTWY1G8MpST5XAxqvXX
 oPzfs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_071006_256418_46CC5C68 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIFBXTSBjb25maWcgY2FuIGJlIHRyaWdnZXJlZCB2aWEgc3lzZnMsIHNvIHdlIGJldHRlciBz
dXBwcmVzcyB0aGUKZXJyb3IgbWVzc2FnZSBpbiBjYXNlIG9mIGFuIGludmFsaWQgcGVyaW9kIHRv
IGF2b2lkIGtlcm5lbCBsb2cgc3BhbW1pbmcuCgpTaWduZWQtb2ZmLWJ5OiBTdGVmYW4gV2FocmVu
IDx3YWhyZW5zdEBnbXgubmV0PgpBY2tlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5l
LWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL3B3bS9wd20tYmNtMjgzNS5jIHwg
NSArLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA0IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1iY20yODM1LmMgYi9kcml2ZXJzL3B3bS9wd20t
YmNtMjgzNS5jCmluZGV4IGY2ZmUwYjkuLjUyNzYzMDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdt
L3B3bS1iY20yODM1LmMKKysrIGIvZHJpdmVycy9wd20vcHdtLWJjbTI4MzUuYwpAQCAtNzIsMTEg
KzcyLDggQEAgc3RhdGljIGludCBiY20yODM1X3B3bV9jb25maWcoc3RydWN0IHB3bV9jaGlwICpj
aGlwLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtLAoKIAlzY2FsZXIgPSBESVZfUk9VTkRfQ0xPU0VT
VChOU0VDX1BFUl9TRUMsIHJhdGUpOwoKLQlpZiAocGVyaW9kX25zIDw9IE1JTl9QRVJJT0QpIHsK
LQkJZGV2X2VycihwYy0+ZGV2LCAicGVyaW9kICVkIG5vdCBzdXBwb3J0ZWQsIG1pbmltdW0gJWRc
biIsCi0JCQlwZXJpb2RfbnMsIE1JTl9QRVJJT0QpOworCWlmIChwZXJpb2RfbnMgPD0gTUlOX1BF
UklPRCkKIAkJcmV0dXJuIC1FSU5WQUw7Ci0JfQoKIAl3cml0ZWwoRElWX1JPVU5EX0NMT1NFU1Qo
ZHV0eV9ucywgc2NhbGVyKSwKIAkgICAgICAgcGMtPmJhc2UgKyBEVVRZKHB3bS0+aHdwd20pKTsK
LS0KMi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
