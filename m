Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B748E13C60B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:32:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nPULOExZMStZEwoLUx2BAvDOuvsDY8iDaxDjk2w5rh8=; b=nRvd9+RsmtyMx/
	t5YTGC1uVD78WUp+PpMsYlSNShNre5JHw8OVbb7rjnQjE08uSuyxbP4tZV1iQKSZmRSG1n9Rdp2ng
	G8XTTL8uY6qwOP4oLxTZ70gwFQ/V+rfBym/IpXBRDabS0kRkb0yvLJnZ89OFPd1TrlpOLGFQ5fNi6
	D6HO7jiZaISr8CUSJdKDPI7UgnCmGxpoH9I6TE4HOa6jzd+75mryZoj3BNQKDfyfVXiYSYVG5SrSc
	UsS/XGP1sjfSl7UcRqTrTQw6KQVsCJ/H1kO7MGI7R7+p+PfceQ/DbU/WHHxSdhocUFR8KquK8THNL
	VJEA4M379dCp5URAuPdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjiA-000193-46; Wed, 15 Jan 2020 14:31:58 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjhz-00017q-PZ; Wed, 15 Jan 2020 14:31:52 +0000
Received: by mail-lj1-x22c.google.com with SMTP id j1so18793552lja.2;
 Wed, 15 Jan 2020 06:31:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=sOQxzN5NDYoxiTphKC0O7iNLkeFOG3BsOaRsIHhZ6bo=;
 b=JCx3UTfDxTUmVC1HYZ86QsSoFC4PJw/IYDcDJt7AbB9OB4T9cKnzURfMo45Oboso6I
 gITD2YhfQR51/LoxOhH5QAcda0pni3/gVXbN2GlROKU2XSn2iescZNzq7yMojnuVZSYr
 mp17IyTWtSTTYC3qDcI604in59dNDHw+IHGi+3U9LSgj1FGylg0OuvDzfM1zLnakHe7i
 w0IT0OQQ+VVwohV3I4gXx9DmV8Wjy0BdbMoUkuvSayWVQ1PX2yK0je9uBfL2t/2DTd5X
 g9KrXB/uk4cohgCw0238l8fdgZiOlo58WgFmxaaqZJSmKeOent00heBB1kWBRFy/NREv
 tx6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sOQxzN5NDYoxiTphKC0O7iNLkeFOG3BsOaRsIHhZ6bo=;
 b=Xfv9vAROB2o1B/RhOGJYVTQlUsofcWbfkr486XYAYFLvg0XNHlh+JzH163YJNJsWaw
 x0rZxqSseKgT3G938em/CswTfTi0nRBcVickeH9wmCuZXu+XJ0apWzdbJVzzgOVYKR5j
 FitotE85KyUz5L/RkM/F9XPGIKszqH8OMhnpMoUam4CEnwYSOun2s8AncxDIaqaPCwzC
 La50GgAz14joQYOdATDK12frtY3QWBf4oXI7aA/j0KV7BG/AQ83UNSIofNnuNZNMYCjl
 e1//38gfbATrl4yVVhmc5vBQzHNt6eyC+mnWDcAqOLF2T6dkvcsPH61TNe1tKWKcwamf
 PMnQ==
X-Gm-Message-State: APjAAAVadPdF81rRFEsBacW0syy5J1g0Dh7i/PhlAhIhHHTnqirnsB+9
 yhnB52T9FETEVPg1Ow4Iyz35I75AIff63ESHSJA=
X-Google-Smtp-Source: APXvYqxBNivdjDB9UAkh5jr3+ZntG61mIWj3gXLK7oRj/tKsNxCCY+tZKMT6VBSs4qeRqL3G6ZRLGxcHmyl1IEfTyBE=
X-Received: by 2002:a05:651c:282:: with SMTP id
 b2mr2005368ljo.41.1579098705191; 
 Wed, 15 Jan 2020 06:31:45 -0800 (PST)
MIME-Version: 1.0
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-23-afaerber@suse.de>
 <20191221202755.GN32732@amd> <506d0697-1820-7811-1b38-910355812948@suse.de>
 <20191221210406.GA13125@amd> <1b3fc7f2-3c10-9b11-37ac-1bc7b0aa47d8@suse.de>
 <CANiq72nA9OLa0SjY8W055J_2A32tcp7S98SruKSdWH2dm25VKw@mail.gmail.com>
 <56f7cd23-2156-a6e4-15fe-3efd5ccf851b@suse.de>
In-Reply-To: <56f7cd23-2156-a6e4-15fe-3efd5ccf851b@suse.de>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 15 Jan 2020 15:31:34 +0100
Message-ID: <CANiq72nUkMj5bg8CDAg-2G0wdAjAe2CdHL5mb2cwWXF_d4Qgtw@mail.gmail.com>
Subject: Re: [RFC 22/25] leds: tm1826: Add combined glyph support
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_063147_855937_78065779 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (miguel.ojeda.sandonis[at]gmail.com)
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
Cc: linux-realtek-soc@lists.infradead.org,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Dan Murphy <dmurphy@ti.com>,
 Pavel Machek <pavel@ucw.cz>, linux-leds@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKCk9uIFN1biwgRGVjIDIyLCAyMDE5IGF0IDQ6MTQgQU0gQW5kcmVhcyBGw6Ry
YmVyIDxhZmFlcmJlckBzdXNlLmRlPiB3cm90ZToKPgo+IFBsZWFzZSBmaW5kIHRoZSBmdWxsIHNl
cmllcyBvbiwgZS5nLiwgTEFLTUw6Cj4KPiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2Nv
dmVyLzExMjg2OTM5LwoKU29ycnkgZm9yIHRoZSBsYXRlIHJlcGx5LiBUaGFua3MgZm9yIHRoZSBw
b2ludGVyIQoKPiBBcyBleHBsYWluZWQgaW4gdGhlIGNvdmVyIGxldHRlciwgdGhlIHByb2JsZW0g
aGVyZSBpcyB0aGF0IEkgZG9uJ3Qga25vdwo+IHRoZSBtb2RlbCBvciBtYW51ZmFjdHVyZXIgb2Yg
dGhlc2UgdW5tYXJrZWQgd2hpdGUtcGxhc3RpYy1mcmFtZSBMRUQKPiBkaXNwbGF5cy4gU28gd2Ug
aGF2ZSBuZWl0aGVyIGEgZmlsZW5hbWUgdG8gdXNlIGluIGF1eGRpc3BsYXkvIG5vciBhIERUCj4g
Y29tcGF0aWJsZSBzdHJpbmcgdG8gdXNlIGZvciB0aG9zZSBkaXNwbGF5cy4KCkZvciB0aGUgZmls
ZW5hbWUsIEkgZG9uJ3QgdGhpbmsgaXQgaXMgYSBiaWcgZGVhbC4gSnVzdCB1c2Ugd2hhdGV2ZXIK
eW91IHRoaW5rIHdvdWxkIGZpdCBiZXN0LCBldmVuIGlmIGl0IGlzIGEgZ2VuZXJpYyBuYW1lLiBU
aGUgbW9zdAppbXBvcnRhbnQgYml0IGlzIGhhdmluZyBhIGNsZWFyIEtjb25maWcgKGFuZCBiZWlu
ZyBkaXNhYmxlZCBieQpkZWZhdWx0KS4KCkNoZWVycywKTWlndWVsCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
