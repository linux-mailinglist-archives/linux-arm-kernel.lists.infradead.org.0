Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5B2BE5E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 21:51:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1ZDdIRVtepe6cgUZQMhp4aLG1tMlJYU5fPIpfJ43rw=; b=s3iVBIyrT9iQuD
	dCzW79YuhQSZ17ttLrltz+YTS1BaZsXumREaF1W4SyrCJNradVpqnwlWyUtTgigwGRwcusPg03MxI
	tfpgAFxirfpV5gglEjEHKzN3SBx3uMl+gsTkfLLwMLbm1Vvdp+KV3ijBg7UZ6Txf1a9plm0GvwXiK
	6WynbkVmK/LrIMbfP7ZHP5tlSB2JC8JGcb+fyak3i1YKKfyfRttl+gJrrdIJhzy86UKmhT3bq9dKE
	k8K8JAlJXqe/p1NkCgq2JEN77j6mqi95WZjav0iSD+5gKPhkgMJJhkyOEZdraQ4o5bxCQsRsIvrKE
	6sN6nI0sZPis5EjEHI8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDDK6-0008IR-J1; Wed, 25 Sep 2019 19:51:38 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDDJw-0008I4-E0
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 19:51:30 +0000
Received: by mail-io1-xd43.google.com with SMTP id a1so82591ioc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 12:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7UzUPhdDwye0y9pei0w7rdNmv2ryHHm6LDWbyRnVYSM=;
 b=Jz3bj8mMNC56BKXs2n2SMJ0d2h55KjTNKe8YC6ViXX6LoPaXgBnHzUfhhNMkL9Fa/4
 u+eRbsSoXjoi0t71SgHUHC2HdGFleskh9MZ3whT5uAr7pFz95h8NpSr+0NbGfPv7CgOj
 3jbTFmX6alYk4PsRE671QrYXdixfJshL/YFAtd/zANi/DxDYatQhIhAkxfubHLxzjDez
 eOXmlCwglkfO2gXdzFWBpi1oVhQzNcdH7XCzv2HitvVZhIngYbJfnQpOgZu7K9thPz/y
 9FkNV1FF6/O42BCrcbOwbJtMUY6zvCxzILf9qJLP5GQDJUKUehaYbJNrgzcSnzSc9SKy
 ZiNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7UzUPhdDwye0y9pei0w7rdNmv2ryHHm6LDWbyRnVYSM=;
 b=rkp3HJjvmPIiJusFJvCrm14K6daJIOk3atv9UkeFwd/a8VZzB9GY2AJdaonzMzYpPz
 /lUA727S7FCeyuV+6jhPHZBDQUEg97oUCQkqq/eQ8hTWoRVc7oCWu05gEdMp5/gYpux3
 TeNnAaV63jOlwelFi1yKI3w3CCdMMa2EL7yso56TKxoqEa1p1IEi+zaIBxMrFgeJZsp4
 ldyhnb0oDfSZEYygrBJl509ogB99DeF5lOztvoG6bgPQqB8abNQWgxHnKg854+ycHTy4
 n9Ihmt45htgeYlNTMwZqCao5DmR1NB9uysJ9z8KEQxoz3ESao/K/u628UqePqFGzQLDJ
 /Zvw==
X-Gm-Message-State: APjAAAWCGCP/ZE+u8U3oDZiSwavvKtObLKT+Y2Frh7M3jySxwhXkXHQp
 F77pTKbckXPeMLp/Xujhd7IwgVfQ6u9XlCyU7UYo6wwH
X-Google-Smtp-Source: APXvYqxcvI6IY3d2gQ423bUVEy1STmzRP8gUTGUS8oc/J0R9DQhj159yNvNzXmKFKih9k353isQqBHIslijHdk+6+8E=
X-Received: by 2002:a6b:8e92:: with SMTP id q140mr1215257iod.205.1569441086526; 
 Wed, 25 Sep 2019 12:51:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190924233222.52757-1-tony@atomide.com>
In-Reply-To: <20190924233222.52757-1-tony@atomide.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 25 Sep 2019 14:51:15 -0500
Message-ID: <CAHCN7xKfk8C=cccMUPLn1voKRaUQC1GSJi_0EPAaW2Rg7Zc8Eg@mail.gmail.com>
Subject: Re: [PATCH] ARM: OMAP2+: Fix warnings with broken
 omap2_set_init_voltage()
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_125128_500561_D6074020 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, "H. Nikolaus Schaller" <hns@goldelico.com>,
 Tero Kristo <t-kristo@ti.com>, =?UTF-8?Q?Andr=C3=A9_Roth?= <neolynx@gmail.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBTZXAgMjQsIDIwMTkgYXQgNjozMiBQTSBUb255IExpbmRncmVuIDx0b255QGF0b21p
ZGUuY29tPiB3cm90ZToKPgo+IFRoaXMgY29kZSBpcyBjdXJyZW50bHkgdW5hYmxlIHRvIGZpbmQg
dGhlIGR0cyBvcHAgdGFibGVzIGFzIHRpLWNwdWZyZXEKPiBuZWVkcyB0byBzZXQgdGhlbSB1cCBm
aXJzdCBiYXNlZCBvbiBzcGVlZCBiaW5uaW5nLgo+Cj4gV2Ugc3RvcHBlZCBpbml0aWFsaXppbmcg
dGhlIG9wcCB0YWJsZXMgd2l0aCBwbGF0Zm9ybSBjb2RlIHllYXJzIGFnbyBmb3IKPiBkZXZpY2Ug
dHJlZSBiYXNlZCBib290aW5nIHdpdGggY29tbWl0IDkyZDUxODU2ZDc0MCAoIkFSTTogT01BUDMr
OiBkbyBub3QKPiByZWdpc3RlciBub24tZHQgT1BQIHRhYmxlcyBmb3IgZGV2aWNlIHRyZWUgYm9v
dCIpLCBhbmQgYWxsIG9mIG1hY2gtb21hcDIKPiBpcyBub3cgYm9vdGluZyB1c2luZyBkZXZpY2Ug
dHJlZS4KPgo+IFdlIGN1cnJlbnRseSBnZXQgdGhlIGZvbGxvd2luZyBlcnJvcnMgb24gaW5pdDoK
Pgo+IG9tYXAyX3NldF9pbml0X3ZvbHRhZ2U6IHVuYWJsZSB0byBmaW5kIGJvb3QgdXAgT1BQIGZv
ciB2ZGRfbXB1Cj4gb21hcDJfc2V0X2luaXRfdm9sdGFnZTogdW5hYmxlIHRvIHNldCB2ZGRfbXB1
Cj4gb21hcDJfc2V0X2luaXRfdm9sdGFnZTogdW5hYmxlIHRvIGZpbmQgYm9vdCB1cCBPUFAgZm9y
IHZkZF9jb3JlCj4gb21hcDJfc2V0X2luaXRfdm9sdGFnZTogdW5hYmxlIHRvIHNldCB2ZGRfY29y
ZQo+IG9tYXAyX3NldF9pbml0X3ZvbHRhZ2U6IHVuYWJsZSB0byBmaW5kIGJvb3QgdXAgT1BQIGZv
ciB2ZGRfaXZhCj4gb21hcDJfc2V0X2luaXRfdm9sdGFnZTogdW5hYmxlIHRvIHNldCB2ZGRfaXZh
Cj4KPiBMZXQncyBqdXN0IGRyb3AgdGhlIHVudXNlZCBjb2RlLiBOb3dhZGF5cyB0aS1jcHVmcmVx
IHNob3VsZCBiZSB1c2VkIHRvCj4gdG8gaW5pdGlhbGl6ZSB0aGluZ3MgcHJvcGVybHkuCgpBRkFJ
Q1QsIHRoZSB0aS1jcHVmcmVxIGNoYW5nZXMgaGF2ZW4ndCBiZWVuIGFwcGxpZWQgeWV0IHRvIHN1
cHBvcnQKb21hcDMgYm9hcmRzLCBidXQgdGhlIHJlZ3VsYXIgY3B1ZnJlcSBkb2VzLCBhbmQgaXQg
c2VlbXMgT0suCgo+Cj4gQ2M6IEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPgo+IENjOiBB
bmRyw6kgUm90aCA8bmVvbHlueEBnbWFpbC5jb20+Cj4gQ2M6ICJILiBOaWtvbGF1cyBTY2hhbGxl
ciIgPGhuc0Bnb2xkZWxpY28uY29tPgo+IENjOiBOaXNoYW50aCBNZW5vbiA8bm1AdGkuY29tPgo+
IENjOiBUZXJvIEtyaXN0byA8dC1rcmlzdG9AdGkuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFRvbnkg
TGluZGdyZW4gPHRvbnlAYXRvbWlkZS5jb20+Cj4gLS0tCj4KPiBHdXlzLCBwbGVhc2UgY2hlY2sg
YW5kIGFjayBpZiB3ZSBjYW4gcmVhbGx5IGRvIHRoaXMgdG8gZ2V0IHJpZCBvZiBzb21lCj4gcG9p
bnRsZXNzIGRtZXNnIC1sMyBlcnJvcnMgd2l0aG91dCBhZmZlY3RpbmcgdGhlIG9uZ29pbmcgY3B1
ZnJlcSBhbmQKPiB2b2x0YWdlIHdvcmsuCj4KClRlc3RlZC1ieTogQWRhbSBGb3JkIDxhZm9yZDE3
M0BnbWFpbC5jb20+ICNsb2dpY3BkLXRvcnBlZG8tMzd4eC1kZXZraXQKCj4gLS0tCj4gIGFyY2gv
YXJtL21hY2gtb21hcDIvcG0uYyB8IDEwMCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwMCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybS9tYWNoLW9tYXAyL3BtLmMgYi9hcmNoL2FybS9tYWNoLW9tYXAyL3BtLmMK
PiAtLS0gYS9hcmNoL2FybS9tYWNoLW9tYXAyL3BtLmMKPiArKysgYi9hcmNoL2FybS9tYWNoLW9t
YXAyL3BtLmMKPiBAQCAtNzQsODMgKzc0LDYgQEAgaW50IG9tYXBfcG1fY2xrZG1zX3NldHVwKHN0
cnVjdCBjbG9ja2RvbWFpbiAqY2xrZG0sIHZvaWQgKnVudXNlZCkKPiAgICAgICAgIHJldHVybiAw
Owo+ICB9Cj4KPiAtLyoKPiAtICogVGhpcyBBUEkgaXMgdG8gYmUgY2FsbGVkIGR1cmluZyBpbml0
IHRvIHNldCB0aGUgdmFyaW91cyB2b2x0YWdlCj4gLSAqIGRvbWFpbnMgdG8gdGhlIHZvbHRhZ2Ug
YXMgcGVyIHRoZSBvcHAgdGFibGUuIFR5cGljYWxseSB3ZSBib290IHVwCj4gLSAqIGF0IHRoZSBu
b21pbmFsIHZvbHRhZ2UuIFNvIHRoaXMgZnVuY3Rpb24gZmluZHMgb3V0IHRoZSByYXRlIG9mCj4g
LSAqIHRoZSBjbG9jayBhc3NvY2lhdGVkIHdpdGggdGhlIHZvbHRhZ2UgZG9tYWluLCBmaW5kcyBv
dXQgdGhlIGNvcnJlY3QKPiAtICogb3BwIGVudHJ5IGFuZCBzZXRzIHRoZSB2b2x0YWdlIGRvbWFp
biB0byB0aGUgdm9sdGFnZSBzcGVjaWZpZWQKPiAtICogaW4gdGhlIG9wcCBlbnRyeQo+IC0gKi8K
PiAtc3RhdGljIGludCBfX2luaXQgb21hcDJfc2V0X2luaXRfdm9sdGFnZShjaGFyICp2ZGRfbmFt
ZSwgY2hhciAqY2xrX25hbWUsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBjb25zdCBjaGFyICpvaF9uYW1lKQo+IC17Cj4gLSAgICAgICBzdHJ1Y3Qgdm9sdGFnZWRv
bWFpbiAqdm9sdGRtOwo+IC0gICAgICAgc3RydWN0IGNsayAqY2xrOwo+IC0gICAgICAgc3RydWN0
IGRldl9wbV9vcHAgKm9wcDsKPiAtICAgICAgIHVuc2lnbmVkIGxvbmcgZnJlcSwgYm9vdHVwX3Zv
bHQ7Cj4gLSAgICAgICBzdHJ1Y3QgZGV2aWNlICpkZXY7Cj4gLQo+IC0gICAgICAgaWYgKCF2ZGRf
bmFtZSB8fCAhY2xrX25hbWUgfHwgIW9oX25hbWUpIHsKPiAtICAgICAgICAgICAgICAgcHJfZXJy
KCIlczogaW52YWxpZCBwYXJhbWV0ZXJzXG4iLCBfX2Z1bmNfXyk7Cj4gLSAgICAgICAgICAgICAg
IGdvdG8gZXhpdDsKPiAtICAgICAgIH0KPiAtCj4gLSAgICAgICBpZiAoIXN0cm5jbXAob2hfbmFt
ZSwgIm1wdSIsIDMpKQo+IC0gICAgICAgICAgICAgICAvKgo+IC0gICAgICAgICAgICAgICAgKiBB
bGwgY3VycmVudCBPTUFQcyBzaGFyZSB2b2x0YWdlIHJhaWwgYW5kIGNsb2NrCj4gLSAgICAgICAg
ICAgICAgICAqIHNvdXJjZSwgc28gQ1BVMCBpcyB1c2VkIHRvIHJlcHJlc2VudCB0aGUgTVBVLVNT
Lgo+IC0gICAgICAgICAgICAgICAgKi8KPiAtICAgICAgICAgICAgICAgZGV2ID0gZ2V0X2NwdV9k
ZXZpY2UoMCk7Cj4gLSAgICAgICBlbHNlCj4gLSAgICAgICAgICAgICAgIGRldiA9IG9tYXBfZGV2
aWNlX2dldF9ieV9od21vZF9uYW1lKG9oX25hbWUpOwo+IC0KPiAtICAgICAgIGlmIChJU19FUlIo
ZGV2KSkgewo+IC0gICAgICAgICAgICAgICBwcl9lcnIoIiVzOiBVbmFibGUgdG8gZ2V0IGRldiBw
b2ludGVyIGZvciBod21vZCAlc1xuIiwKPiAtICAgICAgICAgICAgICAgICAgICAgICBfX2Z1bmNf
Xywgb2hfbmFtZSk7Cj4gLSAgICAgICAgICAgICAgIGdvdG8gZXhpdDsKPiAtICAgICAgIH0KPiAt
Cj4gLSAgICAgICB2b2x0ZG0gPSB2b2x0ZG1fbG9va3VwKHZkZF9uYW1lKTsKPiAtICAgICAgIGlm
ICghdm9sdGRtKSB7Cj4gLSAgICAgICAgICAgICAgIHByX2VycigiJXM6IHVuYWJsZSB0byBnZXQg
dmRkIHBvaW50ZXIgZm9yIHZkZF8lc1xuIiwKPiAtICAgICAgICAgICAgICAgICAgICAgICBfX2Z1
bmNfXywgdmRkX25hbWUpOwo+IC0gICAgICAgICAgICAgICBnb3RvIGV4aXQ7Cj4gLSAgICAgICB9
Cj4gLQo+IC0gICAgICAgY2xrID0gIGNsa19nZXQoTlVMTCwgY2xrX25hbWUpOwo+IC0gICAgICAg
aWYgKElTX0VSUihjbGspKSB7Cj4gLSAgICAgICAgICAgICAgIHByX2VycigiJXM6IHVuYWJsZSB0
byBnZXQgY2xrICVzXG4iLCBfX2Z1bmNfXywgY2xrX25hbWUpOwo+IC0gICAgICAgICAgICAgICBn
b3RvIGV4aXQ7Cj4gLSAgICAgICB9Cj4gLQo+IC0gICAgICAgZnJlcSA9IGNsa19nZXRfcmF0ZShj
bGspOwo+IC0gICAgICAgY2xrX3B1dChjbGspOwo+IC0KPiAtICAgICAgIG9wcCA9IGRldl9wbV9v
cHBfZmluZF9mcmVxX2NlaWwoZGV2LCAmZnJlcSk7Cj4gLSAgICAgICBpZiAoSVNfRVJSKG9wcCkp
IHsKPiAtICAgICAgICAgICAgICAgcHJfZXJyKCIlczogdW5hYmxlIHRvIGZpbmQgYm9vdCB1cCBP
UFAgZm9yIHZkZF8lc1xuIiwKPiAtICAgICAgICAgICAgICAgICAgICAgICBfX2Z1bmNfXywgdmRk
X25hbWUpOwo+IC0gICAgICAgICAgICAgICBnb3RvIGV4aXQ7Cj4gLSAgICAgICB9Cj4gLQo+IC0g
ICAgICAgYm9vdHVwX3ZvbHQgPSBkZXZfcG1fb3BwX2dldF92b2x0YWdlKG9wcCk7Cj4gLSAgICAg
ICBkZXZfcG1fb3BwX3B1dChvcHApOwo+IC0KPiAtICAgICAgIGlmICghYm9vdHVwX3ZvbHQpIHsK
PiAtICAgICAgICAgICAgICAgcHJfZXJyKCIlczogdW5hYmxlIHRvIGZpbmQgdm9sdGFnZSBjb3Jy
ZXNwb25kaW5nIHRvIHRoZSBib290dXAgT1BQIGZvciB2ZGRfJXNcbiIsCj4gLSAgICAgICAgICAg
ICAgICAgICAgICBfX2Z1bmNfXywgdmRkX25hbWUpOwo+IC0gICAgICAgICAgICAgICBnb3RvIGV4
aXQ7Cj4gLSAgICAgICB9Cj4gLQo+IC0gICAgICAgdm9sdGRtX3NjYWxlKHZvbHRkbSwgYm9vdHVw
X3ZvbHQpOwo+IC0gICAgICAgcmV0dXJuIDA7Cj4gLQo+IC1leGl0Ogo+IC0gICAgICAgcHJfZXJy
KCIlczogdW5hYmxlIHRvIHNldCB2ZGRfJXNcbiIsIF9fZnVuY19fLCB2ZGRfbmFtZSk7Cj4gLSAg
ICAgICByZXR1cm4gLUVJTlZBTDsKPiAtfQo+IC0KPiAgI2lmZGVmIENPTkZJR19TVVNQRU5ECj4g
IHN0YXRpYyBpbnQgb21hcF9wbV9lbnRlcihzdXNwZW5kX3N0YXRlX3Qgc3VzcGVuZF9zdGF0ZSkK
PiAgewo+IEBAIC0yMDgsMjUgKzEzMSw2IEBAIHZvaWQgb21hcF9jb21tb25fc3VzcGVuZF9pbml0
KHZvaWQgKnBtX3N1c3BlbmQpCj4gIH0KPiAgI2VuZGlmIC8qIENPTkZJR19TVVNQRU5EICovCj4K
PiAtc3RhdGljIHZvaWQgX19pbml0IG9tYXAzX2luaXRfdm9sdGFnZXModm9pZCkKPiAtewo+IC0g
ICAgICAgaWYgKCFzb2NfaXNfb21hcDM0eHgoKSkKPiAtICAgICAgICAgICAgICAgcmV0dXJuOwo+
IC0KPiAtICAgICAgIG9tYXAyX3NldF9pbml0X3ZvbHRhZ2UoIm1wdV9pdmEiLCAiZHBsbDFfY2si
LCAibXB1Iik7Cj4gLSAgICAgICBvbWFwMl9zZXRfaW5pdF92b2x0YWdlKCJjb3JlIiwgImwzX2lj
ayIsICJsM19tYWluIik7Cj4gLX0KPiAtCj4gLXN0YXRpYyB2b2lkIF9faW5pdCBvbWFwNF9pbml0
X3ZvbHRhZ2VzKHZvaWQpCj4gLXsKPiAtICAgICAgIGlmICghc29jX2lzX29tYXA0NHh4KCkpCj4g
LSAgICAgICAgICAgICAgIHJldHVybjsKPiAtCj4gLSAgICAgICBvbWFwMl9zZXRfaW5pdF92b2x0
YWdlKCJtcHUiLCAiZHBsbF9tcHVfY2siLCAibXB1Iik7Cj4gLSAgICAgICBvbWFwMl9zZXRfaW5p
dF92b2x0YWdlKCJjb3JlIiwgImwzX2Rpdl9jayIsICJsM19tYWluXzEiKTsKPiAtICAgICAgIG9t
YXAyX3NldF9pbml0X3ZvbHRhZ2UoIml2YSIsICJkcGxsX2l2YV9tNXgyX2NrIiwgIml2YSIpOwo+
IC19Cj4gLQo+ICBpbnQgX19tYXliZV91bnVzZWQgb21hcF9wbV9ub3BfaW5pdCh2b2lkKQo+ICB7
Cj4gICAgICAgICByZXR1cm4gMDsKPiBAQCAtMjQ2LDEwICsxNTAsNiBAQCBpbnQgX19pbml0IG9t
YXAyX2NvbW1vbl9wbV9sYXRlX2luaXQodm9pZCkKPiAgICAgICAgIG9tYXA0X3R3bF9pbml0KCk7
Cj4gICAgICAgICBvbWFwX3ZvbHRhZ2VfbGF0ZV9pbml0KCk7Cj4KPiAtICAgICAgIC8qIEluaXRp
YWxpemUgdGhlIHZvbHRhZ2VzICovCj4gLSAgICAgICBvbWFwM19pbml0X3ZvbHRhZ2VzKCk7Cj4g
LSAgICAgICBvbWFwNF9pbml0X3ZvbHRhZ2VzKCk7Cj4gLQo+ICAgICAgICAgLyogU21hcnRyZWZs
ZXggZGV2aWNlIGluaXQgKi8KPiAgICAgICAgIG9tYXBfZGV2aW5pdF9zbWFydHJlZmxleCgpOwo+
Cj4gLS0KPiAyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
