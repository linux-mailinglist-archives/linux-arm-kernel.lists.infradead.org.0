Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8EC9164224
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:30:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQscl8HS6EhfUrBgeqvVoIdfe0/Vw+pJYE8KxWnCRqo=; b=IFyxMULxIAkzfM
	j0tfm7GO7nINTYK6X0mOu7Y3ImZ4xjsFt4pLymerYhLkbPldu8Etjh3kLl8lQhPJeXI+F0bhD+eo3
	QeWQn4wRh9VYEZx4iNfKnzY9t8QVvWFJjM+LMk0zwbRu16pOlyAjiDnOgOC+tgzuKI4vKvkEttk/x
	KXNe6GjlcwSqS3M9cQQH2plVLM0Myj+9tIgSzDnogynUn+PfnbSoblMLag8YfKpzouSN82ui1dgAB
	sWRs/+glc+d4K9Wc81syaZMzEPQkCjido7yB1vESiYNj7/wu2ne7UmQQxgjt8urQUP8ju5CYGx4ah
	3U0FHbmbcrfTm+DkPdVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Mc9-0000M7-QW; Wed, 19 Feb 2020 10:29:57 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Mbp-0000D9-0q
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:29:38 +0000
Received: by mail-vs1-xe41.google.com with SMTP id a2so15089515vso.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 02:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=N/FWsOslLeWJ8wc9PPiLEWzxti0Lz4tyLMKB84GK8Qg=;
 b=zzcA9hwk8oBqEzK/Sk5smaykWWWhkqLgdN2ggNaL0cspzNwa1q+GoinNOOoh2h9V51
 Lv7ZUcQx+nj4ydcgo+MumePOIXyd+adldZYvoZGHUzMACLER4enSZC94mRb28MJr6c1A
 J0zDWaHD7YQ525Kl6Y1gatEtQ406L9F6WgmgJkakqPk8Q+C9ZZgLDbcn0PVAxkoeaFBp
 u1Zh99N7KbfqvYQDnfJFNmIip0HZ15FT2UcLc3U/w813BeSgu1q8swKVqPbRLuHM9XJ3
 Uxz065dq2yY9KSl+injyEt5q+2tCcO4d067fxfYm7S/GKS+XZflxxlWeTWxnoNcErJqI
 wpGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=N/FWsOslLeWJ8wc9PPiLEWzxti0Lz4tyLMKB84GK8Qg=;
 b=fFHrBH8Z0ZH54F0Te3rQk/yJmI2p00gVhDYuVOpsA1cj/ej2n+f76s3/qQMkveb+7q
 H8ukTyozrh363Vopbp10TnhchX0Hbm/koAs7HvgQDVLsuiQ3fa0l3FZ/36RWHIjWJM3N
 PYSzVQ7EXl1tmX+pclY5L6SN/LTUZF02bA123n7/FAMfRmYRoIvY7LFBfNmSIFNbeto/
 fXLWQuV0C0GlzW+bJ0FMq8mRQqJRRX49Wvlr8FFFr0CytGgJASH952XMrMUvqtzbMAfm
 lOUC6fFvyJCuud9uZMyRCNzBQWlMAykmzD26bQNr0IUex+UtL2TFjMX21RLV340wuLpI
 tsYQ==
X-Gm-Message-State: APjAAAV0if9VHvjvMTx7UpRKTKUJh+TtEBXoUIo6gYAIEpkqOnW98mpX
 EL8c2htZo1aJ/CY3KnoHp5qKGR497mruKL/sXukJcfaE
X-Google-Smtp-Source: APXvYqwdd1WVvropN/Ah9GWZ4j1iP+qWglk6pATFnqpFpANspIETm+lPq1ohJHYuPnh9a1IcHgjcTAcwzRPQ36OkB7Q=
X-Received: by 2002:a67:5e45:: with SMTP id s66mr13897757vsb.200.1582108175469; 
 Wed, 19 Feb 2020 02:29:35 -0800 (PST)
MIME-Version: 1.0
References: <20200128090636.13689-1-ludovic.barre@st.com>
 <20200128090636.13689-10-ludovic.barre@st.com>
 <853f4b14-a188-f329-34e5-8e88fcafa775@st.com>
In-Reply-To: <853f4b14-a188-f329-34e5-8e88fcafa775@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 19 Feb 2020 11:28:59 +0100
Message-ID: <CAPDyKFrKunZ1nDiSR-6ZgZNxkxs=_R-i3N9QWNovnZ4iY=DP=g@mail.gmail.com>
Subject: Re: [PATCH V2 9/9] mmc: mmci: add sdmmc variant revision 2.0
To: Ludovic BARRE <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_022937_067268_43B4B532 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxMSBGZWIgMjAyMCBhdCAxNTo0NCwgTHVkb3ZpYyBCQVJSRSA8bHVkb3ZpYy5iYXJy
ZUBzdC5jb20+IHdyb3RlOgo+Cj4gaGkgVWxmCj4KPiBMZSAxLzI4LzIwIMOgIDEwOjA2IEFNLCBM
dWRvdmljIEJhcnJlIGEgw6ljcml0IDoKPiA+IFRoaXMgcGF0Y2ggYWRkcyBhIHNkbW1jIHZhcmlh
bnQgcmV2aXNpb24gMi4wLgo+ID4gVGhpcyByZXZpc2lvbiBpcyBiYWNrd2FyZCBjb21wYXRpYmxl
IHdpdGggMS4xLCBhbmQgYWRkcyBkbWEKPiA+IGxpbmsgbGlzdCBzdXBwb3J0Lgo+ID4KPiA+IFNp
Z25lZC1vZmYtYnk6IEx1ZG92aWMgQmFycmUgPGx1ZG92aWMuYmFycmVAc3QuY29tPgo+ID4gLS0t
Cj4gPiAgIGRyaXZlcnMvbW1jL2hvc3QvbW1jaS5jIHwgMzAgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspCj4gPgo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5jIGIvZHJpdmVycy9tbWMvaG9zdC9t
bWNpLmMKPiA+IGluZGV4IDI0ZTYzMDE4M2VkNC4uYTc3NGMzMjljMjEyIDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9tbWMvaG9zdC9tbWNpLmMKPiA+ICsrKyBiL2RyaXZlcnMvbW1jL2hvc3QvbW1j
aS5jCj4gPiBAQCAtMjc1LDYgKzI3NSwzMSBAQCBzdGF0aWMgc3RydWN0IHZhcmlhbnRfZGF0YSB2
YXJpYW50X3N0bTMyX3NkbW1jID0gewo+ID4gICAgICAgLmluaXQgICAgICAgICAgICAgICAgICAg
PSBzZG1tY192YXJpYW50X2luaXQsCj4gPiAgIH07Cj4gPgo+ID4gK3N0YXRpYyBzdHJ1Y3QgdmFy
aWFudF9kYXRhIHZhcmlhbnRfc3RtMzJfc2RtbWN2MiA9IHsKPiA+ICsgICAgIC5maWZvc2l6ZSAg
ICAgICAgICAgICAgID0gMTYgKiA0LAo+ID4gKyAgICAgLmZpZm9oYWxmc2l6ZSAgICAgICAgICAg
PSA4ICogNCwKPiA+ICsgICAgIC5mX21heCAgICAgICAgICAgICAgICAgID0gMjA4MDAwMDAwLAo+
ID4gKyAgICAgLnN0bTMyX2Nsa2RpdiAgICAgICAgICAgPSB0cnVlLAo+ID4gKyAgICAgLmNtZHJl
Z19jcHNtX2VuYWJsZSAgICAgPSBNQ0lfQ1BTTV9TVE0zMl9FTkFCTEUsCj4gPiArICAgICAuY21k
cmVnX2xyc3BfY3JjICAgICAgICA9IE1DSV9DUFNNX1NUTTMyX0xSU1BfQ1JDLAo+ID4gKyAgICAg
LmNtZHJlZ19zcnNwX2NyYyAgICAgICAgPSBNQ0lfQ1BTTV9TVE0zMl9TUlNQX0NSQywKPiA+ICsg
ICAgIC5jbWRyZWdfc3JzcCAgICAgICAgICAgID0gTUNJX0NQU01fU1RNMzJfU1JTUCwKPiA+ICsg
ICAgIC5jbWRyZWdfc3RvcCAgICAgICAgICAgID0gTUNJX0NQU01fU1RNMzJfQ01EU1RPUCwKPiA+
ICsgICAgIC5kYXRhX2NtZF9lbmFibGUgICAgICAgID0gTUNJX0NQU01fU1RNMzJfQ01EVFJBTlMs
Cj4gPiArICAgICAuaXJxX3Bpb19tYXNrICAgICAgICAgICA9IE1DSV9JUlFfUElPX1NUTTMyX01B
U0ssCj4gPiArICAgICAuZGF0YWN0cmxfZmlyc3QgICAgICAgICA9IHRydWUsCj4gPiArICAgICAu
ZGF0YWNudF91c2VsZXNzICAgICAgICA9IHRydWUsCj4gPiArICAgICAuZGF0YWxlbmd0aF9iaXRz
ICAgICAgICA9IDI1LAo+ID4gKyAgICAgLmRhdGFjdHJsX2Jsb2Nrc3ogICAgICAgPSAxNCwKPiA+
ICsgICAgIC5kYXRhY3RybF9hbnlfYmxvY2tzeiAgID0gdHJ1ZSwKPiA+ICsgICAgIC5zdG0zMl9p
ZG1hYnNpemVfbWFzayAgID0gR0VOTUFTSygxNiwgNSksCj4gPiArICAgICAuZG1hX2xsaSAgICAg
ICAgICAgICAgICA9IHRydWUsCj4gPiArICAgICAuYnVzeV90aW1lb3V0ICAgICAgICAgICA9IHRy
dWUsCj4KPiBJIGZvcmdldCAiYnVzeV9kZXRlY3QgICAgICAgICAgID0gdHJ1ZSwiIHByb3BlcnR5
Cj4gSSBhZGQgdGhpcyBpbiBuZXh0IHBhdGNoIHNldAoKTm8gbmVlZCBmb3IgYSByZS1zZW5kLCBJ
IGFtZW5kZWQgdGhpcyB3aGVuIEkgYXBwbGllZCBpdC4KCj4KPiA+ICsgICAgIC5idXN5X2RldGVj
dF9mbGFnICAgICAgID0gTUNJX1NUTTMyX0JVU1lEMCwKPiA+ICsgICAgIC5idXN5X2RldGVjdF9t
YXNrICAgICAgID0gTUNJX1NUTTMyX0JVU1lEMEVORE1BU0ssCj4gPiArICAgICAuaW5pdCAgICAg
ICAgICAgICAgICAgICA9IHNkbW1jX3ZhcmlhbnRfaW5pdCwKPiA+ICt9Owo+ID4gKwo+ID4gICBz
dGF0aWMgc3RydWN0IHZhcmlhbnRfZGF0YSB2YXJpYW50X3Fjb20gPSB7Cj4gPiAgICAgICAuZmlm
b3NpemUgICAgICAgICAgICAgICA9IDE2ICogNCwKPiA+ICAgICAgIC5maWZvaGFsZnNpemUgICAg
ICAgICAgID0gOCAqIDQsCj4gPiBAQCAtMjM0Myw2ICsyMzY4LDExIEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgYW1iYV9pZCBtbWNpX2lkc1tdID0gewo+ID4gICAgICAgICAgICAgICAubWFzayAgID0g
MHhmMGZmZmZmZiwKPiA+ICAgICAgICAgICAgICAgLmRhdGEgICA9ICZ2YXJpYW50X3N0bTMyX3Nk
bW1jLAo+ID4gICAgICAgfSwKPiA+ICsgICAgIHsKPiA+ICsgICAgICAgICAgICAgLmlkICAgICA9
IDB4MDAyNTMxODAsCj4gPiArICAgICAgICAgICAgIC5tYXNrICAgPSAweGYwZmZmZmZmLAo+ID4g
KyAgICAgICAgICAgICAuZGF0YSAgID0gJnZhcmlhbnRfc3RtMzJfc2RtbWN2MiwKPiA+ICsgICAg
IH0sCj4gPiAgICAgICAvKiBRdWFsY29tbSB2YXJpYW50cyAqLwo+ID4gICAgICAgewo+ID4gICAg
ICAgICAgICAgICAuaWQgICAgID0gMHgwMDA1MTE4MCwKPiA+CgpLaW5kIHJlZ2FyZHMKVWZmZQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
