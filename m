Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA90211ACE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 16:06:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7/U21pF9bZSnpMFrC7ByMQx+Ql6SA9V02lH0w2bGGDM=; b=aSv29babx4X+FNsYJTXIKZYOIh
	qDy77DESy4hF/zYD0jeB36XtbQFzGFnDAafMIx7Pu79cS3fqjv7GbyPN/QYkH0oMG88D1Wm9uF+fQ
	k8iZq7F/VqO++jPFS99rk4muQJGdocVK0Lk/O0Hp6FkXdXsco/v6wgTeJTWeE0fIdjbdvoiIPyw0J
	nuqnhksdHk6xqrj9FhEq3/kBNUgGEVHhbnurnC2zJmL9Ueqy9QzQvyDMDWQqG0GEKO0nwkWqZx21D
	lKcLvi70vEz/dSKDTWpEGfu21XlpdnnOWfb9jHpHdGPD9k3ikEFt3IqIWrv962NGxrvFefhpHuLOO
	pnDLFUHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMCM7-0006qy-WB; Thu, 02 May 2019 14:06:36 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMCLy-0006pt-4j
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 14:06:29 +0000
Received: by mail-wm1-x341.google.com with SMTP id b67so6705729wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 07:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version:content-transfer-encoding;
 bh=QGgQfDpOC9GynBt/HJwUnNrT3bmyX6mwS6UqDLi7QQ8=;
 b=bKjBe+dqOnsrcqtMj0TiGJlgZ14Ixvdw6Hn9wrx4AxmmuSQ3thnQBSM8atO2YZ3OZj
 CUrq/DbFIUqQ43IZuaqGMcfUklWjxUSwgjtKlDDkhdB+xnVn2pKugkfRkk0SWVhHXUOf
 6O6rnBQ8Hn8gmp1dm//3et3sh7Fz4qN/3wqy+cACNkwc9LKzhG4XWIvZX6O54OJz0Ofz
 YURV80ECF3JjftX15fUIr/5rxiy8LSqEouWuyBCnVbi+icNYd54MJK5WczVk0y10QQpu
 ZwAK8i61zzkZL6pTde1z3OgHlfArtROuX93kNS4PxNRirQ898bhMA9fLiJQ0d+6zmde/
 NbRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version:content-transfer-encoding;
 bh=QGgQfDpOC9GynBt/HJwUnNrT3bmyX6mwS6UqDLi7QQ8=;
 b=DKWvv9/VCuKUipY2807pUjZr6mLz2U7S/EA8UuQq0DNklBP6No9aL/ymQJ7y2Zh2IS
 xWKhAEO8nwIjpvNs6Pn4VPFaHrQLzQmSERG20TG/Xgv/JGmhdI+gUuRDN+UkJT40AceG
 XXApvSLVE0tu/hdBtGqIu0q2F7dI2zypPW2dhGERm9xY/Q2vIlWuyvGoV9iEfceILbX2
 NrsdrdqGWFS6kw8lR6Q9/2GgkvhEZ3bBaCjxGna9DkXSnC8iw1q7MUK7kBcZBvRyBDr8
 jCGOipYzQM5Mh/G5Nv0NUhk2zfHr1Rb+WSv1Rkyoi9q/phI5SnX+J4NVRvZWAFQhHhzl
 kQWw==
X-Gm-Message-State: APjAAAXadWEdv4l6++lRZFxHhq6fP8XhnluHQr5EIFo0MXvPJxjp9BN/
 Rt6/OdRUdyQHyytT6tH4qjk=
X-Google-Smtp-Source: APXvYqxZXZ22Iljv7+3hgL97YvrsJFnjhKlJsF8hKZ3bTipu9wZZ9dxg6aqgHYdr8QVWRbqQoBPVQg==
X-Received: by 2002:a7b:c38c:: with SMTP id s12mr2432243wmj.136.1556805984157; 
 Thu, 02 May 2019 07:06:24 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id s3sm44918727wre.97.2019.05.02.07.06.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 07:06:23 -0700 (PDT)
References: <20190430074911.8361-1-sebastien.szymanski@armadeus.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: =?utf-8?Q?S=C3=A9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH 2/2] media: imx7-media-csi: add i.MX6UL support
In-reply-to: <20190430074911.8361-1-sebastien.szymanski@armadeus.com>
Date: Thu, 02 May 2019 15:06:21 +0100
Message-ID: <m3imut54te.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_070626_187554_4735CE21 
X-CRM114-Status: GOOD (  22.97  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rmfrfs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2ViYXN0aWVuLApNYW55IHRoYW5rcyBmb3IgdGhpcyBwYXRjaC4KClBsZWFzZSBub3RlIHRo
YXQgdGhlcmUgaXMgYW5vdGhlciBzZXJpZXMgb24gdG9wIG9mIHRoaXMgY29kZSBbMF0sCnRoYXQg
dHVybnMgbXkgcGF0Y2ggdGhhdCB5b3UgbWVudGlvbiBiZWxvdyBvYnNvbGV0ZSwgbWF5YmUgeW91
IG1heQp3YW50IHRvIHJlYmFzZSBvbiB0b3Agb2YgdGhhdC4gYW5kIGFsc28gYSBkaWZmZXJlbnQg
cGF0Y2ggZnJvbSBtZQpbMV0uCgpbMF06IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAx
OTA0MzAyMjUwMTguMzAyNTItMi1zbG9uZ2VyYmVhbUBnbWFpbC5jb20vI2IKWzFdOiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9saW51eC1tZWRpYS8yMDE5MDQzMDIyMjUyMy4yMjgxNC0xLXJ1aS5z
aWx2YUBsaW5hcm8ub3JnLwoKT24gVHVlIDMwIEFwciAyMDE5IGF0IDA4OjQ5LCBTw6liYXN0aWVu
IFN6eW1hbnNraSB3cm90ZToKPiBpLk1YNyBhbmQgaS5NWDZVTC9MIGhhdmUgdGhlIHNhbWUgQ1NJ
IGNvbnRyb2xsZXIuIFNvIGFkZCBpLk1YNlVML0wgc3VwcG9ydAo+IHRvIGlteDctbWVkaWEtY3Np
IGRyaXZlci4KPgo+IFNpZ25lZC1vZmYtYnk6IFPDqWJhc3RpZW4gU3p5bWFuc2tpIDxzZWJhc3Rp
ZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4KCkNhbiB5b3UgYWxzbyBhZGQgaS5NWDZVTC9MIHRv
IHRoZSBoZWFkZXIgb2YgdGhpcyBmaWxlIGFuZCBtYXliZSBpbgp0aGUgaGVscCBzdHJpbmcgaW4g
dGhlIEtjb25maWcuIFRoYXQgd291bGQgbWFrZSBpdCBjbGVhciB0aGF0IHRoaXMKaXMgc3VwcG9y
dGVkIGFsc28gYnkgdGhpcyBkcml2ZXIuCgo+IC0tLQo+ICBUaGlzIHBhdGNoIG5lZWRzIHRoZSBm
b2xsb3dpbmcgcGF0Y2ggZnJvbSBSdWkgTWlndWVsIFNpbHZhOgo+ICBodHRwczovL3BhdGNod29y
ay5saW51eHR2Lm9yZy9wYXRjaC81NTY1Ny8KPgo+ICBJIGhhdmUgdGVzdGVkIHRoaXMgcGF0Y2gg
d2l0aCBhIE9WNTY0MCBzZW5zb3IgKDgtYml0IHBhcmFsbGVsKS4gVGhlIHBpcGVsaW5lIGlzOgo+
Cj4gIERldmljZSB0b3BvbG9neQo+ICAtIGVudGl0eSAxOiBjc2kgKDIgcGFkcywgMiBsaW5rcykK
PiAgICAgICAgICAgICB0eXBlIFY0TDIgc3ViZGV2IHN1YnR5cGUgVW5rbm93biBmbGFncyAwCj4g
ICAgICAgICAgICAgZGV2aWNlIG5vZGUgbmFtZSAvZGV2L3Y0bC1zdWJkZXYwCj4gICAgICAgICBw
YWQwOiBTaW5rCj4gICAgICAgICAgICAgICAgIFtmbXQ6VVlWWThfMlg4LzY0MHg0ODAgZmllbGQ6
bm9uZSBjb2xvcnNwYWNlOnNtcHRlMTcwbSB4ZmVyOjcwOSB5Y2Jjcjo2MDEgcXVhbnRpemF0aW9u
OmxpbS1yYW5nZV0KPiAgICAgICAgICAgICAgICAgPC0gIm92NTY0MCAxLTAwM2MiOjAgW0VOQUJM
RURdCj4gICAgICAgICBwYWQxOiBTb3VyY2UKPiAgICAgICAgICAgICAgICAgW2ZtdDpVWVZZOF8y
WDgvNjQweDQ4MCBmaWVsZDpub25lIGNvbG9yc3BhY2U6c21wdGUxNzBtIHhmZXI6NzA5IHljYmNy
OjYwMSBxdWFudGl6YXRpb246bGltLXJhbmdlXQo+ICAgICAgICAgICAgICAgICAtPiAiY3NpIGNh
cHR1cmUiOjAgW0VOQUJMRURdCj4KPiAgLSBlbnRpdHkgNDogY3NpIGNhcHR1cmUgKDEgcGFkLCAx
IGxpbmspCj4gICAgICAgICAgICAgdHlwZSBOb2RlIHN1YnR5cGUgVjRMIGZsYWdzIDAKPiAgICAg
ICAgICAgICBkZXZpY2Ugbm9kZSBuYW1lIC9kZXYvdmlkZW8wCj4gICAgICAgICBwYWQwOiBTaW5r
Cj4gICAgICAgICAgICAgICAgIDwtICJjc2kiOjEgW0VOQUJMRURdCj4KPiAgLSBlbnRpdHkgMTA6
IG92NTY0MCAxLTAwM2MgKDEgcGFkLCAxIGxpbmspCj4gICAgICAgICAgICAgIHR5cGUgVjRMMiBz
dWJkZXYgc3VidHlwZSBTZW5zb3IgZmxhZ3MgMAo+ICAgICAgICAgICAgICBkZXZpY2Ugbm9kZSBu
YW1lIC9kZXYvdjRsLXN1YmRldjEKPiAgICAgICAgIHBhZDA6IFNvdXJjZQo+ICAgICAgICAgICAg
ICAgICBbZm10OlVZVlk4XzJYOC82NDB4NDgwQDEvMzAgZmllbGQ6bm9uZSBjb2xvcnNwYWNlOnNy
Z2IgeGZlcjpzcmdiIHljYmNyOjYwMSBxdWFudGl6YXRpb246ZnVsbC1yYW5nZV0KPiAgICAgICAg
ICAgICAgICAgLT4gImNzaSI6MCBbRU5BQkxFRF0KPgo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aW14L2lteDctbWVkaWEtY3NpLmMgfCA2MSArKysrKysrKysrKysrKysrLS0tLS0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCA0NiBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaW14L2lteDctbWVkaWEtY3NpLmMgYi9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvaW14L2lteDctbWVkaWEtY3NpLmMKPiBpbmRleCBhNzA4YTAzNDBlYjEu
LmVmNDUzNGE5NmZhMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaW14L2lt
eDctbWVkaWEtY3NpLmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaW14L2lteDctbWVk
aWEtY3NpLmMKPiBAQCAtMTU0LDYgKzE1NCwxMSBAQAo+ICAKPiAgc3RhdGljIGNvbnN0IGNoYXIg
KiBjb25zdCBpbXg3X2NzaV9jbGtfaWRbXSA9IHsiYXhpIiwgImRjaWMiLCAibWNsayJ9Owo+ICAK
PiArZW51bSBjc2lfdHlwZSB7CgptYXliZSBoZXJlIHRoZSBuYW1lIGNvdWxkIGJlIHNvbWV0aGlu
ZyBhbG9uZyBlbnVtIGNzaV9kZXZpY2VfaWQsIEkKZG9uJ3Qga25vdywgdHlwZSBkb2VzIG5vdCBz
b3VuZCBnb29kIHRvIG1lPz8KCj4gKwlJTVg3LAo+ICsJSU1YNlVMCj4gK307Cj4gKwo+ICBzdHJ1
Y3QgaW14N19jc2kgewo+ICAJc3RydWN0IGRldmljZSAqZGV2Owo+ICAJc3RydWN0IHY0bDJfc3Vi
ZGV2IHNkOwo+IEBAIC0xOTUsNiArMjAwLDcgQEAgc3RydWN0IGlteDdfY3NpIHsKPiAgCWJvb2wg
aXNfaW5pdDsKPiAgCWJvb2wgaXNfc3RyZWFtaW5nOwo+ICAJYm9vbCBpc19jc2kyOwo+ICsJZW51
bSBjc2lfdHlwZSB0eXBlOwoKaGVyZSB0aGUgc2FtZSwgaW5zdGVhZCB0eXBlIG1heWJlIGRldl9p
ZD8/IG9yIGRldl90eXBlPz8KCj4gIAo+ICAJc3RydWN0IGNvbXBsZXRpb24gbGFzdF9lb2ZfY29t
cGxldGlvbjsKPiAgfTsKPiBAQCAtNTU0LDYgKzU2MCwxNCBAQCBzdGF0aWMgaW50IGlteDdfY3Np
X3BhZF9saW5rX3ZhbGlkYXRlKHN0cnVjdCB2NGwyX3N1YmRldiAqc2QsCj4gIAlpZiAocmV0KQo+
ICAJCXJldHVybiByZXQ7Cj4gIAo+ICsJaWYgKGNzaS0+dHlwZSA9PSBJTVg2VUwpIHsKPiArCQlt
dXRleF9sb2NrKCZjc2ktPmxvY2spOwo+ICsJCWNzaS0+aXNfY3NpMiA9IGZhbHNlOwo+ICsJCW11
dGV4X3VubG9jaygmY3NpLT5sb2NrKTsKPiArCj4gKwkJcmV0dXJuIDA7Cj4gKwl9Cj4gKwo+ICAJ
cmV0ID0gaW14N19jc2lfZ2V0X3Vwc3RyZWFtX2VuZHBvaW50KGNzaSwgJnVwc3RyZWFtX2VwLCB0
cnVlKTsKPiAgCWlmIChyZXQpIHsKPiAgCQl2NGwyX2VycigmY3NpLT5zZCwgImZhaWxlZCB0byBm
aW5kIHVwc3RyZWFtIGVuZHBvaW50XG4iKTsKPiBAQCAtNzYzLDYgKzc3Nyw3IEBAIHN0YXRpYyBp
bnQgaW14N19jc2lfY29uZmlndXJlKHN0cnVjdCBpbXg3X2NzaSAqY3NpKQo+ICAJc3RydWN0IHY0
bDJfcGl4X2Zvcm1hdCAqb3V0X3BpeCA9ICZ2ZGV2LT5mbXQuZm10LnBpeDsKPiAgCV9fdTMyIGlu
X2NvZGUgPSBjc2ktPmZvcm1hdF9tYnVzW0lNWDdfQ1NJX1BBRF9TSU5LXS5jb2RlOwo+ICAJdTMy
IGNyMSwgY3IxODsKPiArCWludCB3aWR0aCA9IG91dF9waXgtPndpZHRoOwo+ICAKPiAgCWlmIChv
dXRfcGl4LT5maWVsZCA9PSBWNEwyX0ZJRUxEX0lOVEVSTEFDRUQpIHsKPiAgCQlpbXg3X2NzaV9k
ZWludGVybGFjZV9lbmFibGUoY3NpLCB0cnVlKTsKPiBAQCAtNzcyLDE1ICs3ODcsMjcgQEAgc3Rh
dGljIGludCBpbXg3X2NzaV9jb25maWd1cmUoc3RydWN0IGlteDdfY3NpICpjc2kpCj4gIAkJaW14
N19jc2lfYnVmX3N0cmlkZV9zZXQoY3NpLCAwKTsKPiAgCX0KPiAgCj4gLQlpbXg3X2NzaV9zZXRf
aW1hZ3BhcmEoY3NpLCBvdXRfcGl4LT53aWR0aCwgb3V0X3BpeC0+aGVpZ2h0KTsKPiArCWNyMTgg
PSBpbXg3X2NzaV9yZWdfcmVhZChjc2ksIENTSV9DU0lDUjE4KTsKPiArCj4gKwlpZiAoIWNzaS0+
aXNfY3NpMikgewo+ICsJCWlmIChvdXRfcGl4LT5waXhlbGZvcm1hdCA9PSBWNEwyX1BJWF9GTVRf
VVlWWSB8fAo+ICsJCSAgICBvdXRfcGl4LT5waXhlbGZvcm1hdCA9PSBWNEwyX1BJWF9GTVRfWVVZ
VikKPiArCQkJd2lkdGggKj0gMjsKPiArCj4gKwkJaW14N19jc2lfc2V0X2ltYWdwYXJhKGNzaSwg
d2lkdGgsIG91dF9waXgtPmhlaWdodCk7Cj4gKwo+ICsJCWNyMTggfD0gKEJJVF9CQVNFQUREUl9T
V0lUQ0hfRU4gfCBCSVRfQkFTRUFERFJfU1dJVENIX1NFTCB8Cj4gKwkJCUJJVF9CQVNFQUREUl9D
SEdfRVJSX0VOKTsKPiArCQlpbXg3X2NzaV9yZWdfd3JpdGUoY3NpLCBjcjE4LCBDU0lfQ1NJQ1Ix
OCk7Cj4gIAo+IC0JaWYgKCFjc2ktPmlzX2NzaTIpCj4gIAkJcmV0dXJuIDA7Cj4gKwl9Cj4gKwo+
ICsJaW14N19jc2lfc2V0X2ltYWdwYXJhKGNzaSwgd2lkdGgsIG91dF9waXgtPmhlaWdodCk7Cj4g
IAo+ICAJY3IxID0gaW14N19jc2lfcmVnX3JlYWQoY3NpLCBDU0lfQ1NJQ1IxKTsKPiAgCWNyMSAm
PSB+QklUX0dDTEtfTU9ERTsKPiAgCj4gLQljcjE4ID0gaW14N19jc2lfcmVnX3JlYWQoY3NpLCBD
U0lfQ1NJQ1IxOCk7Cj4gIAljcjE4ICY9IEJJVF9NSVBJX0RBVEFfRk9STUFUX01BU0s7Cj4gIAlj
cjE4IHw9IEJJVF9EQVRBX0ZST01fTUlQSTsKPiAgCj4gQEAgLTgxNSwxMiArODQyLDkgQEAgc3Rh
dGljIGludCBpbXg3X2NzaV9lbmFibGUoc3RydWN0IGlteDdfY3NpICpjc2kpCj4gIHsKPiAgCWlt
eDdfY3NpX3N3X3Jlc2V0KGNzaSk7Cj4gIAo+IC0JaWYgKGNzaS0+aXNfY3NpMikgewo+IC0JCWlt
eDdfY3NpX2RtYXJlcV9yZmZfZW5hYmxlKGNzaSk7Cj4gLQkJaW14N19jc2lfaHdfZW5hYmxlX2ly
cShjc2kpOwo+IC0JCWlteDdfY3NpX2h3X2VuYWJsZShjc2kpOwo+IC0JCXJldHVybiAwOwo+IC0J
fQo+ICsJaW14N19jc2lfZG1hcmVxX3JmZl9lbmFibGUoY3NpKTsKPiArCWlteDdfY3NpX2h3X2Vu
YWJsZV9pcnEoY3NpKTsKPiArCWlteDdfY3NpX2h3X2VuYWJsZShjc2kpOwo+ICAKPiAgCXJldHVy
biAwOwo+ICB9Cj4gQEAgLTEyMTgsMjAgKzEyNDIsMzMgQEAgc3RhdGljIGludCBpbXg3X2NzaV9j
bG9ja3NfZ2V0KHN0cnVjdCBpbXg3X2NzaSAqY3NpKQo+ICAJcmV0dXJuIGRldm1fY2xrX2J1bGtf
Z2V0KGRldiwgY3NpLT5udW1fY2xrcywgY3NpLT5jbGtzKTsKPiAgfQo+ICAKPiArc3RhdGljIGNv
bnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgaW14N19jc2lfb2ZfbWF0Y2hbXSA9IHsKPiArCXsgLmNv
bXBhdGlibGUgPSAiZnNsLGlteDctY3NpIiwgLmRhdGEgPSAodm9pZCAqKUlNWDcgfSwKPiArCXsg
LmNvbXBhdGlibGUgPSAiZnNsLGlteDZ1bC1jc2kiLCAuZGF0YSA9ICh2b2lkICopSU1YNlVMIH0s
Cj4gKwl7IH0sCj4gK307Cj4gK01PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIGlteDdfY3NpX29mX21h
dGNoKTsKPiArCj4gIHN0YXRpYyBpbnQgaW14N19jc2lfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPiAgewo+ICAJc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiAg
CXN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSA9IGRldi0+b2Zfbm9kZTsKPiAgCXN0cnVjdCBpbXhf
bWVkaWFfZGV2ICppbXhtZDsKPiAgCXN0cnVjdCBpbXg3X2NzaSAqY3NpOwo+ICsJY29uc3Qgc3Ry
dWN0IG9mX2RldmljZV9pZCAqb2ZfaWQ7Cj4gIAlzdHJ1Y3QgcmVzb3VyY2UgKnJlczsKPiAgCWlu
dCByZXQ7Cj4gIAo+ICsJb2ZfaWQgPSBvZl9tYXRjaF9ub2RlKGlteDdfY3NpX29mX21hdGNoLCBu
b2RlKTsKPiArCWlmICghb2ZfaWQpCj4gKwkJcmV0dXJuIC1FTk9ERVY7Cj4gKwo+ICAJY3NpID0g
ZGV2bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigqY3NpKSwgR0ZQX0tFUk5FTCk7Cj4gIAlp
ZiAoIWNzaSkKPiAgCQlyZXR1cm4gLUVOT01FTTsKPiAgCj4gIAljc2ktPmRldiA9IGRldjsKPiAr
CWNzaS0+dHlwZSA9IChlbnVtIGNzaV90eXBlKW9mX2lkLT5kYXRhOwo+ICAKPiAgCXJldCA9IGlt
eDdfY3NpX2Nsb2Nrc19nZXQoY3NpKTsKPiAgCWlmIChyZXQgPCAwKSB7Cj4gQEAgLTEzNDksMTIg
KzEzODYsNiBAQCBzdGF0aWMgaW50IGlteDdfY3NpX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gLXN0YXRpYyBjb25zdCBzdHJ1Y3Qg
b2ZfZGV2aWNlX2lkIGlteDdfY3NpX29mX21hdGNoW10gPSB7Cj4gLQl7IC5jb21wYXRpYmxlID0g
ImZzbCxpbXg3LWNzaSIgfSwKPiAtCXsgfSwKPiAtfTsKPiAtTU9EVUxFX0RFVklDRV9UQUJMRShv
ZiwgaW14N19jc2lfb2ZfbWF0Y2gpOwo+IC0KPiAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2
ZXIgaW14N19jc2lfZHJpdmVyID0gewo+ICAJLnByb2JlID0gaW14N19jc2lfcHJvYmUsCj4gIAku
cmVtb3ZlID0gaW14N19jc2lfcmVtb3ZlLAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
