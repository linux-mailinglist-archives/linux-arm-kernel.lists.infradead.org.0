Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7214F9BE27
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 16:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ze8fXyiOb26jz8OkT8pEbWrtbYreAJy5nZrs6McmZ5s=; b=CiNTR4OIfDhart
	SUutNvDaNnWfIh9/AbNoCxiXYA9ecwy+59NXfcGzYqKzgn6ACuuHB5SQ1RFlFO8VJJmyTrFVWQajf
	hP6w7oiQZcnPqeFd2hsOn+bsGkrFfdAGglDfWoLxbmpiVf6ss6llrvflsQi0pmVi/moxE7KKl+vFT
	NdygyAo0+qZcEBaY2kMQazWnzDyY57nBSOzrMOxx97+36yAWy4Iie60qNRuE5QDJ+LlflwdlCzYAJ
	4Wf5RIkoOWZIiXfkj7Y4kcfsAujZGybOo82GaOgKPXSlpBTq5AP6xfyF+Say8/98RjQs8e2pFXyMb
	zZqbaTFFNSmFhdFxPyXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1WkX-0005Lc-Rd; Sat, 24 Aug 2019 14:10:37 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Wk6-0004nb-Ck
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 14:10:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566655798;
 bh=p0356BK30yaqXao28qVvueaMUHmiPXaegoIWDiukDy4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=FPLvHF3F1eQfEPy73mmnsP53NAh3u0jSpEB6+THailv4zEuzdwna+GR2Qdwomhdbg
 b57U7oFf2mC0Mp1JqCC+7e+h8yQ4TXj3KWUZlQyO1R0CjYS3ucmkUCnNOtwIBFbWpS
 pP0p5ffueiouSsEgYGkVPJTHYLQlZqJzfjJ67JXo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1M9FjR-1i7Jcv1UNL-006NXj; Sat, 24 Aug 2019 16:09:58 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Thierry Reding <thierry.reding@gmail.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V2 2/3] pwm: bcm2835: fix period_ns range check
Date: Sat, 24 Aug 2019 16:09:47 +0200
Message-Id: <1566655788-24949-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566655788-24949-1-git-send-email-wahrenst@gmx.net>
References: <1566655788-24949-1-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
X-Provags-ID: V03:K1:k1uKE8Vftkrl/41pYV+oH5xV1tYyIKl3SA79jsJlrEm/znGfmxb
 vPUsPCH8MQooBxIiiEtewqIVeYrGjl3jviqP8jmvZ4IlQI5NOg1gyUr+zVhtmGMIpwqQRZC
 ofGmes5DadQ5HKqt55IRir7pgwGeU17r3lXenKeizqsDayV8WzJd3enSOaz2Q1IHKEoWEZI
 /cEL5M9rYiEhlcyJNz4qg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3tPCBJyhJdI=:xOSDLVNwC7SqyhMgU539A4
 7aeaknVIaXPH9QUXP+JzCWJXnrgxEiPxDbAFFprte/SEx9E41q9NsACEuv/bJIDAz7IgKCQIE
 xsJPJ8Ec/KhuvP59+sQ2DWHqEZUwhxqT+sGpZoQXVnc4P4DcqIhex/hbANU0We4xHbPB0BEHN
 xMHwdeG+q1XRtNy6+fznb3KD83w9M6lgfj0y+fIBzz7q2vqsmNo5rgOPLsGa1/B+K7k3RZZvi
 AEy2V2f0DAGjD2EXt5j9Ad9ZBDlCphG+SfE+OzQLTK1R16jOBAEmheJ5Aen10pfd4MViMz4j8
 Qzt1qWlYi4zIwVcQQop1rN8/E1t+vlC7Pq6xfUJl8fJzGqHjj3kN5oByfs96JSu9sS4EQvdDy
 GSSoJ4HKUj6RJu8RFMSvVsOaanXzxAsTZ2k/5OHrb9af4ftw/0PFjjTEl9U4EIvq03cOOddhN
 5n5f01B0uLJFwK3FcA9vSjmRCmnav5CnXdoOD0YabC/PvHh/lxSFeSPY3icNjKoZH+ftb/iBe
 NuUzTTshP8lvnw1e7FqWF93HaxY90QeMxWJB4QX0Oi6A0saQetB5kbWKizf9UU12Qh5UsUc5B
 j5dR5IQIYUUf7Gutpo6OOXtJMdHPsdkkLin4eKPI2Q2douWFpkNce1ry8wtGqOyLeVZF33+hY
 rp+ao2uxWBjPwH5BjSbBEa9LPh6LdNb8jneD3qfcCeLx5qUswjq8ZUmNnTYMlE10+LmnYwDIt
 HYC7Wrodh/T9+w8Y4OwxVySrPVTgCLmV+6RwXgVHSaquks5+iZQNtMQPoLjGGkrNHsZdJrs5R
 fTi4+mYJhZphoXQWtAb0HJwJR747kG1BTIHruaz8I0U6Pp35OTyPYF4/owfYnqpOcU4Rf5kSy
 dA6fwsSZPEmFv4feyM4a3Kt9RyOZ1pnLzVszETdsgD0C1mf0O0yhuxQVbPivL3qeMBW0xtGzu
 XLYc0UkREnqb4iOAlbGdJyaHwN9Om26iGTDlAC09XYONa70aiaiH3zmGIaXcyk1cUYJYonG8O
 eBBp0XgAyGrNxXKiEZxH6oGoqbetllotSHBodJhn+0AINbHobSTjn+os+2IyqUNnEGkOZ9GsM
 GZmzu6LguSop88VdH8YBidqW6ErftZObrgFaxEKvgLeZjlE1255qNN95ouM7RVMIgTXi8TIyd
 4Jkoo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_071010_749862_7CC9052F 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

VGhlIHJhbmdlIGNoZWNrIGZvciBwZXJpb2RfbnMgd2FzIHdyaXR0ZW4gdW5kZXIgYXNzdW1wdGlv
biBvZiBhIGZpeGVkClBXTSBjbG9jay4gV2l0aCBjbGstYmNtMjgzNSBkcml2ZXIgdGhlIFBXTSBj
bG9jayBpcyBhIGR5bmFtaWMgb25lLgpTbyBmaXggdGhpcyBieSBkb2luZyB0aGUgcmFuZ2UgY2hl
Y2sgb24gdGhlIHBlcmlvZCByZWdpc3RlciB2YWx1ZS4KClNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBX
YWhyZW4gPHdhaHJlbnN0QGdteC5uZXQ+CkFja2VkLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5r
bGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvcHdtL3B3bS1iY20yODM1
LmMgfCA5ICsrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tYmNtMjgzNS5jIGIvZHJpdmVy
cy9wd20vcHdtLWJjbTI4MzUuYwppbmRleCA1Mjc2MzA2Li4yYzgyMzg2IDEwMDY0NAotLS0gYS9k
cml2ZXJzL3B3bS9wd20tYmNtMjgzNS5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1iY20yODM1LmMK
QEAgLTIxLDcgKzIxLDcgQEAKICNkZWZpbmUgUEVSSU9EKHgpCQkoKCh4KSAqIDB4MTApICsgMHgx
MCkKICNkZWZpbmUgRFVUWSh4KQkJCSgoKHgpICogMHgxMCkgKyAweDE0KQoKLSNkZWZpbmUgTUlO
X1BFUklPRAkJMTA4CQkvKiA5LjIgTUh6IG1heC4gUFdNIGNsb2NrICovCisjZGVmaW5lIFBFUklP
RF9NSU4JCTB4MgoKIHN0cnVjdCBiY20yODM1X3B3bSB7CiAJc3RydWN0IHB3bV9jaGlwIGNoaXA7
CkBAIC02NCw2ICs2NCw3IEBAIHN0YXRpYyBpbnQgYmNtMjgzNV9wd21fY29uZmlnKHN0cnVjdCBw
d21fY2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSwKIAlzdHJ1Y3QgYmNtMjgzNV9w
d20gKnBjID0gdG9fYmNtMjgzNV9wd20oY2hpcCk7CiAJdW5zaWduZWQgbG9uZyByYXRlID0gY2xr
X2dldF9yYXRlKHBjLT5jbGspOwogCXVuc2lnbmVkIGxvbmcgc2NhbGVyOworCXUzMiBwZXJpb2Q7
CgogCWlmICghcmF0ZSkgewogCQlkZXZfZXJyKHBjLT5kZXYsICJmYWlsZWQgdG8gZ2V0IGNsb2Nr
IHJhdGVcbiIpOwpAQCAtNzEsMTQgKzcyLDE0IEBAIHN0YXRpYyBpbnQgYmNtMjgzNV9wd21fY29u
ZmlnKHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSwKIAl9Cgog
CXNjYWxlciA9IERJVl9ST1VORF9DTE9TRVNUKE5TRUNfUEVSX1NFQywgcmF0ZSk7CisJcGVyaW9k
ID0gRElWX1JPVU5EX0NMT1NFU1QocGVyaW9kX25zLCBzY2FsZXIpOwoKLQlpZiAocGVyaW9kX25z
IDw9IE1JTl9QRVJJT0QpCisJaWYgKHBlcmlvZCA8IFBFUklPRF9NSU4pCiAJCXJldHVybiAtRUlO
VkFMOwoKIAl3cml0ZWwoRElWX1JPVU5EX0NMT1NFU1QoZHV0eV9ucywgc2NhbGVyKSwKIAkgICAg
ICAgcGMtPmJhc2UgKyBEVVRZKHB3bS0+aHdwd20pKTsKLQl3cml0ZWwoRElWX1JPVU5EX0NMT1NF
U1QocGVyaW9kX25zLCBzY2FsZXIpLAotCSAgICAgICBwYy0+YmFzZSArIFBFUklPRChwd20tPmh3
cHdtKSk7CisJd3JpdGVsKHBlcmlvZCwgcGMtPmJhc2UgKyBQRVJJT0QocHdtLT5od3B3bSkpOwoK
IAlyZXR1cm4gMDsKIH0KLS0KMi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
