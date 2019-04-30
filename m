Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B853FC98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 17:17:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TiE7tEB3vbRNWksW0wbOCT002dyBJrE08WM4vS+AKNs=; b=jUXBEp3zaTh6/9
	Wd8dRet7smEDm5A6aC1WY7G9aEdRdSwlhO1o3d4kuHnM9qdateNy/Tk7T5LTgDZH+HvYsqxwH9n8r
	BDCulWIEFTaQxW6SmQsP9ht938IU1mW+S2qNlpxGYxnFtnuzu9PPOIvoM+zNuVEEydhByPUnL0AOz
	8Xjwa4XxMsRI/MHwHeEe+qG6Gz7yTZ5AbJipz/pPEzkvtuLdrNlGQbT4nU51dnGYZ1eXYFDwyLSCT
	v+ADifqnWWFLCp3W9nbdNKQwfG2cuxE5MRCVUsxEmw7o99tC/62usVIVLxaRIQP352gOpD5LrI96C
	V+RH8Cw7z8bUmy34Xkqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLUW2-0000wl-Hd; Tue, 30 Apr 2019 15:17:54 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLUVv-0000wJ-Ha
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 15:17:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1556637462;
 bh=txCz050phlpvCdvRPIpnThNinbh6jWb3GzAgzB4V4u4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=jFkEp1/H6t0C57tqMXbydH3SlZxblnLiollftpyraQqkx7L0rrXNU61lbNgADNWnq
 nS8gyZ0xUAgcGUMbP5Uerr+78Fp6a2eZWJehrNaFT+ho15OmqCm0QUf760qCc6O+8d
 YJwx0C/DVObUbV28pbl8j4fGdwjY2d12NL+Ios20=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([109.90.232.66]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MAwXh-1hSL551xcH-00BOET; Tue, 30
 Apr 2019 17:17:42 +0200
From: =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] mfd: ab8500-debugfs: Fix a typo ("deubgfs")
Date: Tue, 30 Apr 2019 17:17:26 +0200
Message-Id: <20190430151726.7032-1-j.neuschaefer@gmx.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:dsJixy6+MJT3hkm5M0MbCX3Ml9BDfe2QiE2R5JwgWbqemoCrFig
 8C10Wvs7BMQji33zLDBMwQvJyJatVREuMzWE5EOITNHxEdwqeLVDFJC6sWwfSqPo3o4y//9
 XSaF1YP0pJqo8Zy8ns+oh8h2JbXDdKC9PqMsCatwmkFER3cBB3IzOXLtPXnd++PKIkyZo+N
 XYDpb+saV0Xu7KHmMXSnA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zD4gzko6JBI=:xzyU4z+Vgsqyi7ODLDHoW5
 tueFJvF9M+MRwbbReuAXG8HLFzBASPZs9K9h02joHAMhygJ+BgwAedGn8umdzStC1/hGQkIBj
 sqIzGj1c5qwZcSL9IFj9SBU/8SXgooc26HaDQTrqxk1sGp5aHgawyD5o3cJT3eX69I7rYf57a
 Xs7h8Xs3mQ4CqxOrMoX80rPLsxdqJj1vt3nj4LPzVl5bXjTsCXeWuimpvXrEOTANgQYzieDdP
 BIurK2nRbG36AvMeJEfNGcmyo9tfVBOjuHVRRiGCm/OsnS9soMoueDRjafECbnyuB6sh45Mu5
 8iwZWJ6hBY0NZq9w/nKU3rkdMRYzjv6kX/FgZ0+XC6VVKHXnjgkTUJT8htyb51uCcx7sitoXp
 g9zpEskw4IEVVPyDiu66O7F/bU5D8mjKtR9DzrOy4JdTsStKIxWWlbIMsPcBS/o5XvHhR8N6U
 wdg1hQwayowgn8jspylTXNjgEtZXz+KK38c0FQ7rnfKxHBwBmQjC+gOAInp8t99ZKnhtlfHkG
 r2OR5GwPuunndxZOnRGoZp7awTqLM90BuZX4RCNa8835emNZxuqNi1/EiT57vqI06n7rq2eQp
 f4zs5th8BAecqI8oif4n1nqQIS6KAgODidG9xbCQ+TNFL1131qA5cJxwyJnelht27absbFETj
 vZEF058IbwZCUHcUKT6F/6fLbvL1s5lg/IJcJtwTjQAOmLzryC1mo7KZxFBQ/AwLe7XBCygrG
 PAPqvV2+SvtkcN/JKcUX3yn4i+/ZHBqw8S+64JiQBpPinwwoH+xigOeB0PrZN7DjFdipJ61jA
 bcRWEw9Dv8LfUGyZU0K4TlC2QRmgPwPVxGdAIpXOzK1Eo0YjITVSfXLVL8emzxLiTOO9wWrn6
 HSB0hqZDu7FCdxCzBe8etLGzXw2SUHHO1QcPY/Nks7H3CzhAN0PjAzz6bV5JYOv3XAKFTy00+
 kEeSjY6MtGQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_081747_887010_3E2505F7 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (j.neuschaefer[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Colin Ian King <colin.king@canonical.com>,
 Linus Walleij <linus.walleij@linaro.org>, Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ImRlYnVnZnMiIHdhcyBtaXNzcGVsbGVkLgoKU2lnbmVkLW9mZi1ieTogSm9uYXRoYW4gTmV1c2No
w6RmZXIgPGoubmV1c2NoYWVmZXJAZ214Lm5ldD4KLS0tCiBkcml2ZXJzL21mZC9hYjg1MDAtZGVi
dWdmcy5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQvYWI4NTAwLWRlYnVnZnMuYyBiL2RyaXZlcnMv
bWZkL2FiODUwMC1kZWJ1Z2ZzLmMKaW5kZXggOGQ2NTJiMmY5ZDE0Li5mNzBkM2Y2YTk1OWIgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvbWZkL2FiODUwMC1kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9tZmQv
YWI4NTAwLWRlYnVnZnMuYwpAQCAtMjU4Nyw3ICsyNTg3LDcgQEAgc3RhdGljIHNzaXplX3QgYWI4
NTAwX3Vuc3Vic2NyaWJlX3dyaXRlKHN0cnVjdCBmaWxlICpmaWxlLAogfQoKIC8qCi0gKiAtIHNl
dmVyYWwgZGV1YmdmcyBub2RlcyBmb3BzCisgKiAtIHNldmVyYWwgZGVidWdmcyBub2RlcyBmb3Bz
CiAgKi8KCiBzdGF0aWMgY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucyBhYjg1MDBfYmFua19m
b3BzID0gewotLQoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
