Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DAC9D589
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 20:10:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k4VOBeFG+PLt7Yj+QtEsrIPOSJLT4Mb+w/kaGE1rMa8=; b=ZuMBKDuBgoLRD3
	hIWiC7cDaOycSBIF0uMRgb5MepWTJR/YFMGZCOKYTP5LlZA0/KxIgHIuuj0l0yvBD7AV1LEzi7S3K
	xmPyzNdGhA3SpfnE+xlvelgHseV+MKk9XP7t6eRTweqEnCAE70SS2amR4fjJFi6+GBYpCpY30DSRb
	iMZ8bG6nAKwG31jtoy7l/XEthM0k7TxrpDlSHNvVg2lo7ZlPW0Omb+l6vX4cvoaSQvZ6nT10ZYRxE
	w/MpTLx/ZdQ1+dNadtfaRtpGP+OpAJbRb90FmkrGI+4qgelFJA67XcgLrlilzUQtvMRuZbYvYnlyS
	5TOvqXGTXnEkLB9FmIrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2JRq-0006Qh-Ow; Mon, 26 Aug 2019 18:10:34 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JQA-0004lK-4H
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 18:08:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566842921;
 bh=gweS6sFBqw7a79B6BUPIuvNnAjFw784tgZTGVNSFG4M=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=ccXD9KWdx8djHzwWHNhEQU9UbL3MLnu10LoFg9o+E4vpxF2DWC/U1mJ3uLgP9AIPj
 5m1t8qASpsQX/dJGOu/9DwSnuS0oXGuxzqX3ycGvBxmBMloEuIanN56To2UxfwdlJU
 +Gxz7cJmVb3Zw/BBaU5j1B7ZX7eEYUfehlt7OpPw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.106]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MNIi1-1i9DJA0o5R-006zWi; Mon, 26
 Aug 2019 20:08:41 +0200
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Avaneesh Kumar Dwivedi <akdwived@codeaurora.org>,
 Andy Gross <agross@kernel.org>
From: Stefan Wahren <wahrenst@gmx.net>
Subject: qcom: build issue in Linux 5.3-rc6 with CONFIG_XEN=y
Message-ID: <d0ab0e86-a409-10bf-24ff-8bb984055752@gmx.net>
Date: Mon, 26 Aug 2019 20:08:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:BFzBuSg1yc+c4VxvUnTxlCAwvxmbHViiZ1BzmW2Wt24EhucwFgx
 F0zBkvnMr4a9FnlNu1Fpb3XGfKKUWf7PIuG+vnjF1gW6KOzvxmE5w9WKY0RrRkOLy06DBzr
 UUau1NiXf6KR3m+J37KmlRYbPMX0ZKOH1UY6CxNtM5zK1KxSiGvm+cVaha3WAl6ZVBst6Xe
 jXmyAGDAvNy9rdNACJfpQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0LHqDGeWPHw=:LMEPYeER0SocJjfPhu405R
 lYwfvU+KmI7XR8SQfAD5aDNrR9pdTPQXr3+/Kd7kHUP55x++wbnBLZ4+sitnVdKYPf9V0UJOd
 FGTjiM5mfUplp3vJI2pJj6wCocV3mgvlHcponAUEwavgXb7j1EStk7mlgGZxXtquSYhAogemc
 VQxTWVoCqM7u6qgTKMbI2sqSqmB/X9eYcfOcbXShmaJbgb3ysF64HJT4nstIKE1ouXw/toX5k
 HWln8rC9kX3vh3hdwgJvR/ZSOA0IB6IvUTP1s3q+i2Q216Y5c6PWBW9BxfDyl3gkqtiTVEpir
 qiVRgC5Wt7qYVQiC0U/Bv4cHvWvigvaZLQJ+y9EqnmlBatk+xgbRZaDXESMAvGAK+ki2z6114
 ZKch6mn2RH53g8pETGCBJuQkT0uJS0jZMsSN57HgIjcyC4DJxSOdALyDc1WJElauC5h23N2ae
 9bkPJOj3JAOOjYzyBnZGiZxECeBzf6/BAT+ev5QWaFAMLH6q4uzlnZGQZx9CNQJxPdG/RoNuB
 rOqN28A48iPnazXG9E+VtXA3mYTe+1YJY9NiGGF9JkDQA/0CRexRZOIVKDxZwqz5OQRXxGZtq
 d+iOX3dvn36S+k2qLxgg650KaxgZEVE35SDp8oCT8lrKAhwqduiLjncdu4YyJUak2i1Z0w60e
 FZg0VfI3qXakmG41A8QMQrMu14HaK9qh1AtdVYcIV1BMbN9pDmrnHG/kmvLGfHiZowxE0ClFX
 RfkYSTW6y9UzAblLH40cmJ6f/5HqT60J8cOtMYa6Fz1CDeC5o7zpo+pXjkdS6J+wR/uJ9QIsy
 SiMAKzymjhCHo5z3CTYqmDqGGdNU/XrFo9biVSHvlZ7lndiiUOdVnvQ3EduzkpvYmP888evPd
 BeCvMIZIXpsxcqSwBf7Fv4ckotsAUnC9mR4dqhBCfYS/Eymb7PW4ly9Fdlr57k0uvHGSWTlbq
 +t6Kk9roM+M7AFg/cNB4tvqjLkm5QbBbAikjQizJlI9nQaL6tQLKA20IU2FhGwkV9OVtdBH5o
 5vUNGGQvC+oEvxieSnK0FDfLxeP0gXogdrrU1G4GKTT+KY2oPFQ3wR3Ebn/Z0J3dB4kngDjQS
 sKX4VaRCcQ9F202I3e8zquqoQetS8nCvjcfKe4fTWxzwbYkc15aRxyMUewFQcfvqebb0A8o8z
 AoJh8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_110850_587351_A464CA3D 
X-CRM114-Status: UNSURE (   6.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgppIHRyaWVkIHRvIGNyb3NzIGNvbXBpbGUgYXJtL211bHRpX3Y3X2RlZmNvbmZpZyB3aXRo
IENPTkZJR19YRU49eSB3aXRoIExpbnV4IDUuMy1yYzYgYW5kIGknbSBnZXR0aW5nIHRoaXM6CgrC
oGRyaXZlcnMvZmlybXdhcmUvcWNvbV9zY20uYzogSW4gZnVuY3Rpb24g4oCYcWNvbV9zY21fYXNz
aWduX21lbeKAmToKZHJpdmVycy9maXJtd2FyZS9xY29tX3NjbS5jOjQ2MDo0NzogZXJyb3I6IHBh
c3NpbmcgYXJndW1lbnQgMyBvZiDigJhkbWFfYWxsb2NfY29oZXJlbnTigJkgZnJvbSBpbmNvbXBh
dGlibGUgcG9pbnRlciB0eXBlIFstV2Vycm9yPWluY29tcGF0aWJsZS1wb2ludGVyLXR5cGVzXQog
IHB0ciA9IGRtYV9hbGxvY19jb2hlcmVudChfX3NjbS0+ZGV2LCBwdHJfc3osICZwdHJfcGh5cywg
R0ZQX0tFUk5FTCk7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgXgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gZHJpdmVycy9maXJtd2FyZS9xY29tX3NjbS5jOjEy
OjA6Ci4vaW5jbHVkZS9saW51eC9kbWEtbWFwcGluZy5oOjYzNjoyMTogbm90ZTogZXhwZWN0ZWQg
4oCYZG1hX2FkZHJfdCAqIHtha2EgbG9uZyBsb25nIHVuc2lnbmVkIGludCAqfeKAmSBidXQgYXJn
dW1lbnQgaXMgb2YgdHlwZSDigJhwaHlzX2FkZHJfdCAqIHtha2EgdW5zaWduZWQgaW50ICp94oCZ
CiBzdGF0aWMgaW5saW5lIHZvaWQgKmRtYV9hbGxvY19jb2hlcmVudChzdHJ1Y3QgZGV2aWNlICpk
ZXYsIHNpemVfdCBzaXplLAogICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn4K
Y2MxOiBzb21lIHdhcm5pbmdzIGJlaW5nIHRyZWF0ZWQgYXMgZXJyb3JzCnNjcmlwdHMvTWFrZWZp
bGUuYnVpbGQ6MjgwOiBkaWUgUmVnZWwgZsO8ciBaaWVsIOKAnmRyaXZlcnMvZmlybXdhcmUvcWNv
bV9zY20ub+KAnCBzY2hlaXRlcnRlCm1ha2VbMl06ICoqKiBbZHJpdmVycy9maXJtd2FyZS9xY29t
X3NjbS5vXSBGZWhsZXIgMQpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjQ5NzogZGllIFJlZ2VsIGbD
vHIgWmllbCDigJ5kcml2ZXJzL2Zpcm13YXJl4oCcIHNjaGVpdGVydGUKCkx1Y2tpbHkgdGhlcmUg
aXMgYWxyZWFkeSBhIHBhdGNoIHRvIGZpeCB0aGlzIGluIGxpbnV4LW5leHQ6CgpmaXJtd2FyZTog
cWNvbV9zY206IFVzZSBwcm9wZXIgdHlwZXMgZm9yIGRtYSBtYXBwaW5ncwoKSSBob3BlIHNvbWVv
bmUgY2FuIHRha2UgY2FyZSBvZiB0aGlzLgoKUmVnYXJkcwpTdGVmYW4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
