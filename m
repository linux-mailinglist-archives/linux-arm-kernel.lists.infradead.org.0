Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131199EA75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 16:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PcX2Y/Fd55Y3eKxNIQKGJC6ETvqhOfNHe7SFvSzfVFE=; b=c2hfZtMrW2NfmP
	HOwrdfZunGK1N5DijSsnHMEb+3Qh+V8j77VqAUzBVpDnIOOVwJPYNYGR7/Mh1A4EgawU4DiDI17Ij
	nHuA3kwD2lX1TeiOhwhIQNXIbfe93/YP3r9IWW/g3FZy9dm+3EAl8aQOAdO7vfVUV+rxAFWo4JfN8
	Tluclaw98v687WZQr6f5VOWyk/oMfG2Yi4vqi+HGN2lLgbM7ACV28jYz06U8GoenyeKuKgRTKCl1o
	G7Bcv2WnNibtiaZqy4x/ksTIXB088Dmu+8Bb2tvzRkeiMCcE3gi+E0nd/tDYEeM+woBsHo7a3i4Ys
	+lqHCtUOO+vv+57OWqzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2cAn-0005mP-6b; Tue, 27 Aug 2019 14:10:13 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cAY-0005lt-Bz
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 14:09:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1566914984;
 bh=l1aL+K+MTmEGnSVe+8VDSK+N6OAIqm0nzOkK7urvvyI=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=BtxxokAdOS/PJDzDIzndiCckhZUoY/2RrHRuzvBwpJGO2GNaTYiYlX3PqHZ3DaLwh
 y6/GMya0YGRxZM/Mf1p2TEx0xR1nKgowfkcp128/Z++EVsZZLTGkns7+u/FYTg3Kgo
 +ovoIkPM8L2mAphYhqBrE5AMWNOs124Q4Ia+FtJU=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.135.143.232]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MMn1H-1i8Mvn1KO7-008eQ0; Tue, 27
 Aug 2019 16:09:44 +0200
To: linux-media@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Hugues Fruchet <hugues.fruchet@st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] media: stm32-dcmi: Delete an unnecessary of_node_put() call
 in dcmi_probe()
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <129a4933-2171-7ed9-c84c-8e56b6d05270@web.de>
Date: Tue, 27 Aug 2019 16:09:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:Wr+0Yoq1oTTqd2b74+1MXlD8ChSnZMKnD9uHZyqlQ9Z/2KtKofM
 ZxklWMMNeYd4egtYrECUjV1d2hAQxLgmQbNNnTsRmoHnM9LCy9+51WA0VoEWoaJjmxGib8W
 9aIE5rqdp/RDjJx7Mmc53U5BhA7Y9AZgHfv9YyYr08WqamvuAIfeJpk94jRpYtU0sQy+rsx
 BW21EnhBXgpRR3MlhQ3NA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3zFpzUDWfE0=:H9zsFmmkBknJO7OBxyEex8
 PHU6+T/nl8AHourGcb43Y8An0nDclKu6mMqedisfGNqvMcp/MypENT5YWmOFozONCUbeKxmjo
 mLVo5BDLJFqhB6FNefrKdMUSIxcj2NNQR46ezg2vaLMwm7sdIhb/4u8qphuFsKUd+nmV+7ic6
 oIj+tJ4Ic8p9jcKd0m4dQS0DGjio+gqKJecjvRsMCV64ceZBLZCtKBiXHtsbQKFpiBOmyqeJe
 4SANiNcu+JinQfKSIe48JW2lmyCh8cAZxxdqqCGuh/S1XVG8p5fTYFtfQHWCG6HDEdV9q1rhc
 RFBtjecOJqGB8z+wZMxBfe1mcmcIcUMU6uXL4qVJkdca2SyjDATNwZUu6vJdC/acEp2WR8jJp
 //7B9O8h2YikTPC/A1ayQ2JARH4S29WnusSOPtWARAdQy9bCaUa+2J5R9XrJqi71W+qMBi7WA
 Yy1x91h4S6NkDm8Q8rcTSTzV24vOXZaD+yStKLVThHleAiiyDU5YtUG04GvVk5lmaEvVT8gnQ
 18RgYWv7KfXSShkFmJejwljB47yolhYH8bwY7E0BpU2xNI2PniyRq2/XebVNM7nkYZcnMgpbs
 W2BAhQRD6IlMRKOY0OPkoYFrp60I8GA9CEcnpkMpRu1oGUosvXwZGyLxEbHD5hl/fK4WzGF7s
 3PX6hl5z7LmGCQWzURFy3MnBBEe3I8BDJzjdh9Git0xqqZAvS7nSof3jyUjm+3WZ7LmdCaTV8
 mDVBlsZvDd3PN08yaB7VltJgpUc9EFTQ9uVUuivysZntAFNLvT8lmaieXdZAUL1X1AV9B4TEH
 C0y8STwYFbII2g3KXzBugQ4hlrwBLJNqFhZS34+at8/alizPE0YO0+AZSkLcM3UyFRkOucr7m
 X+26RAp3mVCEHbiNwDKcc+4aqbCHjfHzUMwFpfxnEV/uUbAGJTZ24TKkxjJy3yORjE83bud7b
 C21Ffbytbi1J6D6QzvLgL40KsxEla28pX9d56dZ0lV1OYXDBIIEcX4UXrxOa9yVYBSQiewnya
 TBv4B0MzO6hA8xLmOU/1GasQoSGf+my8qYOjQEReeOHqJbQjCDg4CXUefLLMVGGwqB63lKMmr
 kE0fuwAaBDM60vUG3s4I0XSuWn+9o9Qt1S4DB7UYt0XVoac2TgtLItDCyZ3D5y3MKuWoGZT0P
 Ik338=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_070958_753583_3F6D7C3E 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFya3VzIEVsZnJpbmcgPGVsZnJpbmdAdXNlcnMuc291cmNlZm9yZ2UubmV0PgpEYXRl
OiBUdWUsIDI3IEF1ZyAyMDE5IDE2OjAwOjEzICswMjAwCgpBIG51bGwgcG9pbnRlciB3b3VsZCBi
ZSBwYXNzZWQgdG8gYSBjYWxsIG9mIHRoZSBmdW5jdGlvbiDigJxvZl9ub2RlX3B1dOKAnQppbW1l
ZGlhdGVseSBhZnRlciBhIGNhbGwgb2YgdGhlIGZ1bmN0aW9uIOKAnG9mX2dyYXBoX2dldF9uZXh0
X2VuZHBvaW504oCdCmZhaWxlZCBhdCBvbmUgcGxhY2UuClJlbW92ZSB0aGlzIHN1cGVyZmx1b3Vz
IGZ1bmN0aW9uIGNhbGwuCgpUaGlzIGlzc3VlIHdhcyBkZXRlY3RlZCBieSB1c2luZyB0aGUgQ29j
Y2luZWxsZSBzb2Z0d2FyZS4KClNpZ25lZC1vZmYtYnk6IE1hcmt1cyBFbGZyaW5nIDxlbGZyaW5n
QHVzZXJzLnNvdXJjZWZvcmdlLm5ldD4KLS0tCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N0bTMy
L3N0bTMyLWRjbWkuYyB8IDEgLQogMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N0bTMyL3N0bTMyLWRjbWkuYyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vc3RtMzIvc3RtMzItZGNtaS5jCmluZGV4IGNiMWRhZjgyMTdmZi4u
OTM5MmUzNDA5ZmJhIDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N0bTMyL3N0
bTMyLWRjbWkuYworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N0bTMyL3N0bTMyLWRjbWku
YwpAQCAtMTg2MSw3ICsxODYxLDYgQEAgc3RhdGljIGludCBkY21pX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCiAJbnAgPSBvZl9ncmFwaF9nZXRfbmV4dF9lbmRwb2ludChucCwg
TlVMTCk7CiAJaWYgKCFucCkgewogCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJDb3VsZCBub3QgZmlu
ZCB0aGUgZW5kcG9pbnRcbiIpOwotCQlvZl9ub2RlX3B1dChucCk7CiAJCXJldHVybiAtRU5PREVW
OwogCX0KCi0tCjIuMjMuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
