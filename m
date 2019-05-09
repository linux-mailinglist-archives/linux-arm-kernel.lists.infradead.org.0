Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0CB18660
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 09:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g/kcBLxp+BbvHrTo4QDd9QQEi6yPNtRt5wCi6xIgZTg=; b=Alt224+Ha6L/cu
	y+X5GARmc2ZuMdvdU6XXf8JDJ+RnVoi/Ca5ZtbdMUOSHXwI1bZ2AvBHcmjIxBjpvISSbulMXXDYnq
	481JEIKkSyRLt0skJLWhd7HRIX2L5kazPtcsz1usrrt/KN/3Pm67lG1cdIeX53mlUa3n0vhIfQcdI
	2Fmvp8Q+fjQfNzMlo7Ri6ToZOGPrSSSAngbXravrAf5H4msjd+lPL6whit8eGyINSwmcxicloOY56
	IW8Y2OzI/9iNaytJ8/i0JxjcH2IKquUGyUJh7AdWePpi4AvvJPyMMnmG4FBuBNN4cpPhTwRTSpHsT
	8qjUBAlbMF3BoeB5m9RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOdoR-0007kI-Ts; Thu, 09 May 2019 07:49:56 +0000
Received: from mail.eat-dinner.eu ([80.211.38.224] helo=eat-dinner.eu)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOdoE-0007jy-J5
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 07:49:43 +0000
Received: by eat-dinner.eu (Postfix, from userid 1001)
 id 01AB0A3002; Thu,  9 May 2019 09:35:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=eat-dinner.eu;
 s=mail; t=1557387951;
 bh=1wXsRnVQKyR5953v1mK5+VSjATpkqCFjMxx9a9NW6X4=;
 h=Date:From:To:Subject:From;
 b=zlloE2itIZ2ReZceOx7/xt5oYCHH9dlCpdx9H6pGk4E91XC/tY/vwzf+GVABlepZa
 jR9Nr2RTLPWYmmrS+JhE8YOrIqmtlMJP2OGuJtGP+vcpKbOBVSuWkZ4A9GUamRZ1AU
 zspYmx+d3UXqICKFXzTufhI98A6jPCubY+nGzFh8=
Received: by mail.eat-dinner.eu for <linux-arm-kernel@lists.infradead.org>;
 Thu,  9 May 2019 07:35:14 GMT
Message-ID: <20190509084500-0.1.1f.q68.0.kucouik8pk@eat-dinner.eu>
Date: Thu,  9 May 2019 07:35:14 GMT
From: =?UTF-8?Q?"Kapolcs_M=C3=A1ty=C3=A1s"?= <kapolcs.matyas@eat-dinner.eu>
To: <linux-arm-kernel@lists.infradead.org>
Subject: =?UTF-8?Q?Dolgoz=C3=B3i_juttat=C3=A1sok?=
X-Mailer: mail.eat-dinner.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_004942_784681_1A4EA7A8 
X-CRM114-Status: UNSURE (   1.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

w5xkdsO2emzDtm0hCiAKMjAxOSBqYW51w6FydMOzbCB2w6FsdG96aWsgYSBuZW0gYsOpciBqZWxs
ZWfFsSBqdXR0YXTDoXNvayByZW5kamUuCiAKRWd5IGtpdsOhbMOzIGxlaGV0xZFzw6lnZ2VsIMOp
bGVoZXQsIGFtZW5ueWliZW4gYSBtaSBrw6FydHnDoW5rYXQgdsOhbGFzenRqYSEKIApFeiBhIGvD
oXJ0eWE6CiAKS29ybMOhdGxhbnVsIGZlbGhhc3puw6FsaGF0w7M6CiAKa8Opc3pww6luemZlbHbD
qXRlbArDqWxlbG1pc3plciB2w6Fzw6FybMOhcwplZ8Opc3pzw6lnw7xneWkgZWxsw6F0w6FzCmVs
ZWt0cm9uaWthaSB0ZXJtw6lrZWsgdsOhc8OhcmzDoXNhCm9rdGF0w6FzCnN6w6FsbMOhcwogCkvD
oXJ0ecOhbmsgYXogZWd5ZXRsZW4gb2x5YW4gdmFsw7NiYW4gc3phYmFkZmVsaGFzem7DoWzDoXPD
uiBrw6FydHlhLCBtZWx5ZXQgbWluZGVuIFBPUyB0ZXJtaW7DoWwgZWxmb2dhZCEKIApBbWVubnlp
YmVuIGvDoXJ0ecOhbmsgZmVsa2VsdGV0dGUgw6lyZGVrbMWRZMOpc8OpdCwgbWludCBkb2xnb3rD
s2kganV0dGF0w6FzLCBrw6lyZW0ga2VyZXNzZW4gZmVsIGEgdG92w6FiYmkgdMOhasOpa296dGF0
w6FzIMOpcmRla8OpYmVuIQogCsOWcsO2bW1lbCDDoWxsdW5rIHJlbmRlbGtlesOpc8OpcmUgbWlu
ZGVuYmVuIQoKCkthcG9sY3MgTcOhdHnDoXMKSHVuZ2FyeSBUZWFtIExlYWRlcgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
