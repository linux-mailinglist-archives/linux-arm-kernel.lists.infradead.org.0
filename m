Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F571F6622
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 13:02:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fVvE01T7L3dHWTn/S86oBWGj4vy9S0Wi3+plrkCPfX4=; b=nHYyVtR15c7tKI
	7kaginv0zwplUJ/tGAAivGLipT8qD9rBUrw+9HioGKDA18GEM1X5EWRsPMRqc4/+sKcSU+tMtgjIN
	ilsNjjaAYNjzwxxNnEKU9fLSXWmIzoAE3QQgAyMY+j8/TKWYwd3lZQczSgQVAXqo9g9a4UtNrAb9M
	H/SNmXahlgYIiX3Qby+Ci/VQbu/TVddJMARCQdcCis4+WYuHSllyeH1vBZ6El+R1b2N6/K58UlmbJ
	Jq0BeljBUVlMMV2vSv9ZAVbZ78wYG4ql0QkrioqfRVo94+P2B4WWZOescoSqeHpHJqL3JVtUMMF0D
	Mwx0AieVu0ILg4u9gC9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjKyA-0002WD-79; Thu, 11 Jun 2020 11:02:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjKy1-0002Vo-WE; Thu, 11 Jun 2020 11:01:55 +0000
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E15832063A;
 Thu, 11 Jun 2020 11:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591873313;
 bh=gu1h/IUOYhI/7TOM9U7hb+/LUXvwcm40pAKhwgfcYJY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cqIboAqW4hHg8bgqsiAn5Q1joqHSy2u96T8WmDCoKNmUki3qY/n2Gi/NBM/JZe9ud
 6suEbxCYhZvyHE+wTVEtc3xrPld+ha04U7LDPUafJVU0+drjHfXo7CCbpo5IljafZq
 x65ETJPafXg64M4NzyodZhY36M1okkxf8OolFlkQ=
Received: by mail-ej1-f49.google.com with SMTP id p20so5969260ejd.13;
 Thu, 11 Jun 2020 04:01:52 -0700 (PDT)
X-Gm-Message-State: AOAM531I+TgdQfil+4XcdYaw/OYVSXL09Hn1zGAqXp8NKw5kY8Gn7Tqb
 TC/lNklcRwF1GadFKCfTUrw9Y7KmStfnR/eqUg==
X-Google-Smtp-Source: ABdhPJw+wR6kRsb831SwdiEVc8DVKidgK603StbRz0iL76ismZz8YnpXgHH7FyP/vdg5X3AletAez5O8TnpELbZ50VE=
X-Received: by 2002:a17:907:369:: with SMTP id
 rs9mr7631774ejb.187.1591873311470; 
 Thu, 11 Jun 2020 04:01:51 -0700 (PDT)
MIME-Version: 1.0
References: <1591698261-22639-1-git-send-email-neal.liu@mediatek.com>
 <1591698261-22639-3-git-send-email-neal.liu@mediatek.com>
 <CAAOTY__g3Fnwsoqx=x_tgdMii5K_L9TmF_9048XbAOSJwb-Cxg@mail.gmail.com>
 <1591867563.27949.9.camel@mtkswgap22>
In-Reply-To: <1591867563.27949.9.camel@mtkswgap22>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Thu, 11 Jun 2020 19:01:39 +0800
X-Gmail-Original-Message-ID: <CAAOTY_8gOjr9nBUVA6oNu0v+D0Rc0AbhJ41wBCvDpMme+kuHmA@mail.gmail.com>
Message-ID: <CAAOTY_8gOjr9nBUVA6oNu0v+D0Rc0AbhJ41wBCvDpMme+kuHmA@mail.gmail.com>
Subject: Re: [PATCH 2/2] soc: mediatek: devapc: add devapc-mt6873 driver
To: Neal Liu <neal.liu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_040154_078604_E92A186B 
X-CRM114-Status: GOOD (  18.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 wsd_upstream <wsd_upstream@mediatek.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIE5lYWw6CgpOZWFsIExpdSA8bmVhbC5saXVAbWVkaWF0ZWsuY29tPiDmlrwgMjAyMOW5tDbm
nIgxMeaXpSDpgLHlm5sg5LiL5Y2INToyNuWvq+mBk++8mgo+Cj4gT24gV2VkLCAyMDIwLTA2LTEw
IGF0IDAwOjAxICswODAwLCBDaHVuLUt1YW5nIEh1IHdyb3RlOgo+IEhpIENodW4tS3VhbmcsCj4K
PiBbc25pcF0KPgo+ID4gPiArCj4gPiA+ICsvKgo+ID4gPiArICogbXRrX2RldmFwY19wZF9nZXQg
LSBnZXQgZGV2YXBjIHBkX3R5cGVzIG9mIHJlZ2lzdGVyIGFkZHJlc3MuCj4gPiA+ICsgKgo+ID4g
PiArICogUmV0dXJucyB0aGUgdmFsdWUgb2YgcmVnIGFkZHIKPiA+ID4gKyAqLwo+ID4gPiArc3Rh
dGljIHZvaWQgX19pb21lbSAqbXRrX2RldmFwY19wZF9nZXQoaW50IHNsYXZlX3R5cGUsCj4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVudW0gREVWQVBDX1BEX1JF
R19UWVBFIHBkX3JlZ190eXBlLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB1MzIgaW5kZXgpCj4gPiA+ICt7Cj4gPiA+ICsgICAgICAgc3RydWN0IG10a19kZXZh
cGNfdmlvX2luZm8gKnZpb19pbmZvID0gbXRrX2RldmFwY19jdHgtPnNvYy0+dmlvX2luZm87Cj4g
PiA+ICsgICAgICAgdTMyIHNsYXZlX3R5cGVfbnVtID0gbXRrX2RldmFwY19jdHgtPnNvYy0+c2xh
dmVfdHlwZV9udW07Cj4gPiA+ICsgICAgICAgY29uc3QgdTMyICpkZXZhcGNfcGRzID0gbXRrX2Rl
dmFwY19jdHgtPnNvYy0+ZGV2YXBjX3BkczsKPiA+ID4gKyAgICAgICB2b2lkIF9faW9tZW0gKnJl
ZzsKPiA+ID4gKwo+ID4gPiArICAgICAgIGlmICghZGV2YXBjX3BkcykKPiA+ID4gKyAgICAgICAg
ICAgICAgIHJldHVybiBOVUxMOwo+ID4gPiArCj4gPiA+ICsgICAgICAgaWYgKChzbGF2ZV90eXBl
IDwgc2xhdmVfdHlwZV9udW0gJiYKPiA+ID4gKyAgICAgICAgICAgIGluZGV4IDwgdmlvX2luZm8t
PnZpb19tYXNrX3N0YV9udW1bc2xhdmVfdHlwZV0pICYmCj4gPiA+ICsgICAgICAgICAgIHBkX3Jl
Z190eXBlIDwgUERfUkVHX1RZUEVfTlVNKSB7Cj4gPiA+ICsgICAgICAgICAgICAgICByZWcgPSBt
dGtfZGV2YXBjX2N0eC0+ZGV2YXBjX3BkX2Jhc2Vbc2xhdmVfdHlwZV0gKwo+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICBkZXZhcGNfcGRzW3BkX3JlZ190eXBlXTsKPiA+ID4gKwo+ID4gPiAr
ICAgICAgICAgICAgICAgaWYgKHBkX3JlZ190eXBlID09IFZJT19NQVNLIHx8IHBkX3JlZ190eXBl
ID09IFZJT19TVEEpCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHJlZyArPSAweDQgKiBp
bmRleDsKPiA+ID4gKwo+ID4gPiArICAgICAgIH0gZWxzZSB7Cj4gPiA+ICsgICAgICAgICAgICAg
ICBwcl9lcnIoUEZYICIlczoweCV4IG9yICVzOjB4JXggb3IgJXM6MHgleCBpcyBvdXQgb2YgYm91
bmRhcnlcbiIsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgInNsYXZlX3R5cGUiLCBzbGF2
ZV90eXBlLAo+ID4KPiA+IE1vdmUgInNsYXZlX3R5cGUiIGludG8gZm9ybWF0IHN0cmluZy4KPgo+
IFdoeSBpcyB0aGlzIG5lY2Vzc2FyeT8gSXMgdGhlcmUgYW55IGJlbmVmaXQgZm9yIG1vdmluZyB0
aGlzPwoKU21hbGxlciBjb2RlIHNpemUsIHNpbXBsZSwgaW50dWl0aW9uLgoKPiBTaW5jZSB0aGUg
bGluZSBsZW5ndGggaXMgYWxtb3N0IG92ZXIgODAgY2hhcnMuCgpTaW5nbGUgc3RyaW5nIGNvdWxk
IGJlIG92ZXIgODAgY2hhcnMuCgo+Cj4gPgo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICJw
ZF9yZWdfdHlwZSIsIHBkX3JlZ190eXBlLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICJp
bmRleCIsIGluZGV4KTsKPiA+ID4gKyAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwo+ID4gPiAr
ICAgICAgIH0KPiA+ID4gKwo+ID4gPiArICAgICAgIHJldHVybiByZWc7Cj4gPiA+ICt9Cj4gPiA+
ICsKPiA+Cj4KPiBbc25pcF0KPgo+ID4KPiA+ID4gKwo+ID4gPiArLyoKPiA+ID4gKyAqIGRldmFw
Y192aW9sYXRpb25faXJxIC0gdGhlIGRldmFwYyBJbnRlcnJ1cHQgU2VydmljZSBSb3V0aW5lIChJ
U1IpIHdpbGwgZHVtcAo+ID4gPiArICogICAgICAgICAgICAgICAgICAgICAgIHZpb2xhdGlvbiBp
bmZvcm1hdGlvbiBpbmNsdWRpbmcgd2hpY2ggbWFzdGVyIHZpb2xhdGVzCj4gPiA+ICsgKiAgICAg
ICAgICAgICAgICAgICAgICAgYWNjZXNzIHNsYXZlLgo+ID4gPiArICovCj4gPiA+ICtzdGF0aWMg
aXJxcmV0dXJuX3QgZGV2YXBjX3Zpb2xhdGlvbl9pcnEoaW50IGlycV9udW1iZXIsIHZvaWQgKmRl
dl9pZCkKPiA+ID4gK3sKPiA+ID4gKyAgICAgICB1MzIgc2xhdmVfdHlwZV9udW0gPSBtdGtfZGV2
YXBjX2N0eC0+c29jLT5zbGF2ZV90eXBlX251bTsKPiA+ID4gKyAgICAgICBjb25zdCBzdHJ1Y3Qg
bXRrX2RldmljZV9pbmZvICoqZGV2aWNlX2luZm87Cj4gPiA+ICsgICAgICAgc3RydWN0IG10a19k
ZXZhcGNfdmlvX2luZm8gKnZpb19pbmZvOwo+ID4gPiArICAgICAgIGludCBzbGF2ZV90eXBlLCB2
aW9faWR4LCBpbmRleDsKPiA+ID4gKyAgICAgICBjb25zdCBjaGFyICp2aW9fbWFzdGVyOwo+ID4g
PiArICAgICAgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gPiA+ICsgICAgICAgYm9vbCBub3JtYWw7
Cj4gPiA+ICsgICAgICAgdTggcGVybTsKPiA+ID4gKwo+ID4gPiArICAgICAgIHNwaW5fbG9ja19p
cnFzYXZlKCZkZXZhcGNfbG9jaywgZmxhZ3MpOwo+ID4gPiArCj4gPiA+ICsgICAgICAgZGV2aWNl
X2luZm8gPSBtdGtfZGV2YXBjX2N0eC0+c29jLT5kZXZpY2VfaW5mbzsKPiA+ID4gKyAgICAgICB2
aW9faW5mbyA9IG10a19kZXZhcGNfY3R4LT5zb2MtPnZpb19pbmZvOwo+ID4gPiArICAgICAgIG5v
cm1hbCA9IGZhbHNlOwo+ID4gPiArICAgICAgIHZpb19pZHggPSAtMTsKPiA+ID4gKyAgICAgICBp
bmRleCA9IC0xOwo+ID4gPiArCj4gPiA+ICsgICAgICAgLyogVGhlcmUgYXJlIG11bHRpcGxlIERF
VkFQQ19QRCAqLwo+ID4gPiArICAgICAgIGZvciAoc2xhdmVfdHlwZSA9IDA7IHNsYXZlX3R5cGUg
PCBzbGF2ZV90eXBlX251bTsgc2xhdmVfdHlwZSsrKSB7Cj4gPiA+ICsgICAgICAgICAgICAgICBp
ZiAoIWNoZWNrX3R5cGUyX3Zpb19zdGF0dXMoc2xhdmVfdHlwZSwgJnZpb19pZHgsICZpbmRleCkp
Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmICghbXRrX2RldmFwY19kdW1wX3Zpb19k
Ymcoc2xhdmVfdHlwZSwgJnZpb19pZHgsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgJmluZGV4KSkKPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiA+ID4gKwo+ID4gPiArICAgICAgICAgICAgICAg
LyogRW5zdXJlIHRoYXQgdmlvbGF0aW9uIGluZm8gYXJlIHdyaXR0ZW4gYmVmb3JlCj4gPiA+ICsg
ICAgICAgICAgICAgICAgKiBmdXJ0aGVyIG9wZXJhdGlvbnMKPiA+ID4gKyAgICAgICAgICAgICAg
ICAqLwo+ID4gPiArICAgICAgICAgICAgICAgc21wX21iKCk7Cj4gPiA+ICsgICAgICAgICAgICAg
ICBub3JtYWwgPSB0cnVlOwo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgICBtYXNrX21vZHVs
ZV9pcnEoc2xhdmVfdHlwZSwgdmlvX2lkeCwgdHJ1ZSk7Cj4gPiA+ICsKPiA+ID4gKyAgICAgICAg
ICAgICAgIGlmIChjbGVhcl92aW9fc3RhdHVzKHNsYXZlX3R5cGUsIHZpb19pZHgpKQo+ID4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICBwcl93YXJuKFBGWCAiJXMsICVzOjB4JXgsICVzOjB4JXhc
biIsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImNsZWFyIHZpbyBzdGF0
dXMgZmFpbGVkIiwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAic2xhdmVf
dHlwZSIsIHNsYXZlX3R5cGUsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
InZpb19pbmRleCIsIHZpb19pZHgpOwo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgICBwZXJt
ID0gZ2V0X3Blcm1pc3Npb24oc2xhdmVfdHlwZSwgaW5kZXgsIHZpb19pbmZvLT5kb21haW5faWQp
Owo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgICB2aW9fbWFzdGVyID0gbXRrX2RldmFwY19j
dHgtPnNvYy0+bWFzdGVyX2dldAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAodmlvX2lu
Zm8tPm1hc3Rlcl9pZCwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIHZpb19pbmZvLT52
aW9fYWRkciwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIHNsYXZlX3R5cGUsCj4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICB2aW9faW5mby0+c2hpZnRfc3RhX2JpdCwKPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgIHZpb19pbmZvLT5kb21haW5faWQpOwo+ID4KPiA+IENh
bGwgbXQ2ODczX2J1c19pZF90b19tYXN0ZXIoKSBkaXJlY3RseS4gRm9yIGZpcnN0IHBhdGNoLCBt
YWtlIHRoaW5ncwo+ID4gYXMgc2ltcGxlIGFzIHBvc3NpYmxlLgo+Cj4gSW4gZGV2YXBjX3Zpb2xh
dGlvbl9pcnEoKSBmdW5jdGlvbiwgd2UgdXNlIGNvbW1vbiBmbG93IHRvIGhhbmRsZSBlYWNoCj4g
ZGV2YXBjIHZpb2xhdGlvbiBvbiBkaWZmZXJlbnQgcGxhdGZvcm1zLiBUaGUgbWFzdGVyX2dldCgp
IGhhcyBkaWZmZXJlbnQKPiBpbXBsZW1lbnRhdGlvbiBvbiBkaWZmZXJlbnQgcGxhdGZvcm1zLCB0
aGF0IHdoeSBpdCBjYWxsZWQgaW5kaXJlY3RseS4KPgo+IE9uY2Ugd2UgaGF2ZSBuZXcgcGxhdGZv
cm0sIHdlIG9ubHkgaGF2ZSB0byB1cGRhdGUgZGV2YXBjLW10eHh4eC5jCj4gaW5zdGVhZCBvZiBj
b21tb24gaGFuZGxlciBmbG93LgoKWW91IGp1c3QgdXBzdHJlYW0gb25lIFNvQyBub3csIHNvIEkg
aGF2ZSBubyBpbmZvcm1hdGlvbiBvZiAybmQgU29DLgpXaXRob3V0IHRoZSAybmQgU29DLCBob3cg
ZG8gd2Uga25vdyB3aGF0IGlzIGNvbW1vbiBhbmQgd2hhdCBpcyBTb0Mgc3BlY2lhbD8KU28gdGhl
IGZpcnN0IHBhdGNoIHNob3VsZCBub3QgY29uc2lkZXIgdGhlIHRoaW5ncyB3aGljaCBkb2VzIG5v
dCBleGlzdCB5ZXQuCgpSZWdhcmRzLApDaHVuLUt1YW5nLgoKPgo+ID4KPiA+ID4gKwo+ID4gPiAr
ICAgICAgICAgICAgICAgaWYgKCF2aW9fbWFzdGVyKSB7Cj4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgIHByX3dhcm4oUEZYICJtYXN0ZXJfZ2V0IGZhaWxlZFxuIik7Cj4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgIHZpb19tYXN0ZXIgPSAiVU5LTk9XTl9NQVNURVIiOwo+ID4gPiArICAg
ICAgICAgICAgICAgfQo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgICBwcl9pbmZvKFBGWCAi
JXMgLSAlczoweCV4LCAlczoweCV4LCAlczoweCV4LCAlczoweCV4XG4iLAo+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAiVmlvbGF0aW9uIiwgInNsYXZlX3R5cGUiLCBzbGF2ZV90eXBlLAo+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAic3lzX2luZGV4IiwKPiA+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgZGV2aWNlX2luZm9bc2xhdmVfdHlwZV1baW5kZXhdLnN5c19pbmRleCwK
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgImN0cmxfaW5kZXgiLAo+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICBkZXZpY2VfaW5mb1tzbGF2ZV90eXBlXVtpbmRleF0uY3RybF9pbmRl
eCwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgInZpb19pbmRleCIsCj4gPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgIGRldmljZV9pbmZvW3NsYXZlX3R5cGVdW2luZGV4XS52aW9faW5k
ZXgpOwo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgICBwcl9pbmZvKFBGWCAiJXMgJXMgJXMg
JXNcbiIsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICJWaW9sYXRpb24gLSBtYXN0ZXI6
IiwgdmlvX21hc3RlciwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgImFjY2VzcyB2aW9s
YXRpb24gc2xhdmU6IiwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZGV2aWNlX2luZm9b
c2xhdmVfdHlwZV1baW5kZXhdLmRldmljZSk7Cj4gPiA+ICsKPiA+ID4gKyAgICAgICAgICAgICAg
IGRldmFwY192aW9fcmVhc29uKHBlcm0pOwo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgICBk
ZXZhcGNfZXh0cmFfaGFuZGxlcihzbGF2ZV90eXBlLCB2aW9fbWFzdGVyLCB2aW9faWR4LAo+ID4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdmlvX2luZm8tPnZpb19hZGRy
KTsKPiA+ID4gKwo+ID4gPiArICAgICAgICAgICAgICAgbWFza19tb2R1bGVfaXJxKHNsYXZlX3R5
cGUsIHZpb19pZHgsIGZhbHNlKTsKPiA+ID4gKyAgICAgICB9Cj4gPiA+ICsKPiA+ID4gKyAgICAg
ICBpZiAobm9ybWFsKSB7Cj4gPiA+ICsgICAgICAgICAgICAgICBzcGluX3VubG9ja19pcnFyZXN0
b3JlKCZkZXZhcGNfbG9jaywgZmxhZ3MpOwo+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuIElS
UV9IQU5ETEVEOwo+ID4gPiArICAgICAgIH0KPiA+ID4gKwo+ID4gPiArICAgICAgIHNwaW5fdW5s
b2NrX2lycXJlc3RvcmUoJmRldmFwY19sb2NrLCBmbGFncyk7Cj4gPiA+ICsgICAgICAgcmV0dXJu
IElSUV9IQU5ETEVEOwo+ID4gPiArfQo+ID4gPiArCj4KPiBbc25pcF0KPgo+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
