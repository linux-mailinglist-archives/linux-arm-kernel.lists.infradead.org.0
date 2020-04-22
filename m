Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBDD1B48CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 17:36:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iw5r9uA/WSi5PHQei5ERRQklPYKevgrXAdG4WhO8MlE=; b=KcWTDAkPe5w/Et
	XDGtyeb1Llwv3zC95zRHHyGhnDKTOZyH+nx9oekQzqdhi5oFo/RUaclhSkAvK4L3qV4pk6Omb/ksA
	4eqrPohuoyrI2Y9LD/2o8jZxWSso0n6h5P4QgvGxMfhM/H92xOCmF57FnCFByHMDSYw1Fn6ZHBV3K
	EkI2Whl2HTycUB8ln/poE1Dqpt+8wXeLYwV5lv+LhOe6rLf6H2M3N2YG2GvF7f3uL/8YdCSPG279m
	dlHacXu844E8uiav3C7bncXJtOisB3G+uX1592s4uSo+E+44/bmjrinlCuyHwjIn6CxSRTVu/qfzK
	la8f8E/UM9+S4cuF85Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRHQC-0005UZ-T5; Wed, 22 Apr 2020 15:36:20 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRHQ1-0005Rz-C3
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 15:36:11 +0000
Received: by mail-yb1-xb42.google.com with SMTP id l84so1409421ybb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 08:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+AjFfEvExopko5vrpG5TAim2gTw/nPEygKLzyKFqNHY=;
 b=AZwYjSI/UXuxNN7NJfejVcVD/JWxuHM2HmXpNcbCNlVy7r0ba+rutav8Pn70cdoLm0
 ZimhlWIZFJLZoreLu1R0uij5j3if46a95rh73L6nnVX93jPCdyyS6RgQ8Y913UgQqmVA
 ft7vBx0lpwpTK0DAKv1Wkk60mkzZB/TgGJ7m2AJmeaSEbTTAaWpzr3LNQEitU3/8EsS3
 /5D6pyqQFfFInaEOc79FLV5OBYUtJcrcN8TIWGPpD0lixpvNavePd4Sa+EVsSgAol1By
 knki3pld00nBrwMullmQNE8o+Rx5FL5SWT8Vp4QStnwTo/d3Sgath6WRHePUhBavNDyZ
 DT2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+AjFfEvExopko5vrpG5TAim2gTw/nPEygKLzyKFqNHY=;
 b=S3laMq2aF9h4vWyx2jZhGOsSJ+PUGoWEj9lBAVI5M1R45VDeh/RUuE8737ONL7bSxY
 Gaqg8dPPmGDwN5Jso/EIDVvH2Mx15bwR75R1oegAIKkXelTrCsT+jv8/BBNi2aDVkooo
 cUB5nXp6bq9BYtG9qMegE12x3BzOWoy9d2gXL/R6zjVCWUEapwU0u9voU2gKJUseWsUD
 X8jaQ7j6lVBD5i9YB2dQCGUNdRi1F+7ColJGC4qWEroLgYdbOUGqlpWKAB/NxMCf7NsH
 mYSmxYbVyiAYOatsqjwdC0m59zHYvgPGiEwt/RmdsAIuimN+UA0OjljDabO+3f+0rzSn
 VyLg==
X-Gm-Message-State: AGi0PuZL1V6TX7FIr3FU6Ggw+J36mjb14/8WaAATVozVWgzTBif7bIfy
 4CBlXCl0kraEyZufaD6BUkSnDSzcTBYNueFs1LERDA==
X-Google-Smtp-Source: APiQypI//eHnV/pEir7WM2H9X+55MxxgsM/Mje90OxuP3GH+OrpvQW5vERdQQ1tXEJCI8NvO99y+KCXOrOB2lzalJVM=
X-Received: by 2002:a25:374d:: with SMTP id e74mr35541070yba.343.1587569766048; 
 Wed, 22 Apr 2020 08:36:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200422114429.0b1a6f1a3366bae5964f3e10@linaro.org>
 <20200422115035.2f8d48843793d0d6f6724522@linaro.org>
 <CAK7LNAQL1ZkHKwODW2VYnpRw+y5Eg4abg+xCDa=PfQktHLnW_w@mail.gmail.com>
In-Reply-To: <CAK7LNAQL1ZkHKwODW2VYnpRw+y5Eg4abg+xCDa=PfQktHLnW_w@mail.gmail.com>
From: Masami Hiramatsu <masami.hiramatsu@linaro.org>
Date: Thu, 23 Apr 2020 00:35:54 +0900
Message-ID: <CAA93ih2rqCGEJT91iMQrEK-8BDNd_z_DP52OSF6Ps=HbUjTz4g@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: uniphier: Add support for Akebi96
To: Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_083609_442430_CD11F0B5 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 DTML <devicetree@vger.kernel.org>, Jassi Brar <jaswinder.singh@linaro.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gWWFtYWRhLXNhbiwKCjIwMjDlubQ05pyIMjPml6Uo5pyoKSAwOjEwIE1hc2FoaXJvIFlh
bWFkYSA8bWFzYWhpcm95QGtlcm5lbC5vcmc+Ogo+Cj4gSGlyYW1hdHN1LXNhbgo+Cj4gT24gV2Vk
LCBBcHIgMjIsIDIwMjAgYXQgMTE6NTAgQU0gTWFzYW1pIEhpcmFtYXRzdQo+IDxtYXNhbWkuaGly
YW1hdHN1QGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gPiArCj4gPiArJmV0aCB7Cj4gPiArICAgICAg
IHN0YXR1cyA9ICJva2F5IjsKPiA+ICsgICAgICAgcGh5LW1vZGUgPSAicmdtaWkiOwo+ID4gKyAg
ICAgICBwaW5jdHJsLTAgPSA8JnBpbmN0cmxfZXRoZXJfcmdtaWk+Owo+Cj4gVGhlc2UgdHdvIGxp
bmVzIGFyZSBhY3R1YWxseSByZWR1bmRhbnQgYmVjYXVzZSBSR01JSQo+IGlzIHRoZSBkZWZhdWx0
IGluIHVuaXBoaWVyLWxkMjAuZHRzaQo+IChhbmQgdW5pcGhpZXItbGQyMC1yZWYuZHRzIHNraXBz
IHRoZW0uKQo+Cj4gRGlkIHlvdSBpbnRlbnRpb25hbGx5IG1ha2UgaXQgdmVyYm9zZT8KCk9vcHMs
IG5vLCB3ZSBkb24ndCBuZWVkIGl0LiBJdCdzIGEgbGVnYWN5IGNvZGUgKElJUkMsIHRoZXJlJ3Mg
YQpoaXN0b3JpY2FsIHJlYXNvbikuCgoKPiA+ICsmc3BpMyB7Cj4gPiArICAgICAgIHN0YXR1cyA9
ICJva2F5IjsKPiA+ICsgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gPiArICAgICAgICNz
aXplLWNlbGxzID0gPDA+Owo+Cj4gQWRkaW5nICNhZGRyZXNzLWNlbGxzIGFuZCAjc2l6ZS1zaXpl
cyB0byBhIGJvYXJkIERUUwo+IGlzIHN0cmFuZ2UuCgpJbmRlZWQuCgo+IEkgd2lsbCBhcHBseSB0
aGlzOgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9wYXRjaC8xMjI5NDk3Lwo+
IHRoZW4gZGVsZXRlIHRoZSBsaW5lcyBhYm92ZS4KCk9LLCBJJ2xsIHVwZGF0ZS4KClRoYW5rIHlv
dSwKCgoKLS0gCk1hc2FtaSBIaXJhbWF0c3UKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
