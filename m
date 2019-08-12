Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7950E89DB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 14:11:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Ncov7+HGZLpVAwPwaHdTIfuXWj1CQpNVQqWUvcBGqU=; b=P7G2fYfUr9zQEg
	BO5B7I4+GLUwy2mOHHInPcNlBSCHuFb8sl3pM4PZmr+tbUmi++hQ5huKqoFgORZlXXOwZUkYly4CU
	flSjkK4r3ZecJs7UZGYYsSHH34pctN1/Tfbr8NT7E9AwhAHXBGEw5vUbFYfvGktCgZo5xhPpn5EJO
	cksYphOSnDdI/k/2FOMcXPjuJyG+954mhbiAfV86gkrUnbzTCxiIlmRWK6DlA/0aQ5RicZW3yT3a5
	ZeRHy41/V8GKpPm0yyBuzJTfNv/nggOA816hwcd3UtkwQtdchgYxiLply50BLyGJts7NlH8nFH/UZ
	p1ZRvGOJhQcQLbRAp1CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9AP-0000bm-Ow; Mon, 12 Aug 2019 12:11:13 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9A1-0000bK-Vs
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 12:10:51 +0000
Received: by mail-yw1-xc43.google.com with SMTP id n126so1106366ywf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 05:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4z7p+08vVGRKaFoY5K0HIJAi+xxlVs7dirH0vF1HBV8=;
 b=ZlaFDJkn8yLyk6xQ571Oe8ABNlq9Ly3tW4PGAUu0Hla738q5vre4pOqrZkuY8VjcLY
 QpxgkZTkbiY5sV9lQyaoMRfyOwYTWorH8Q/M9AGSYfXcB2QnWh+47f3RNUrhS2QpK/5e
 u3IU8gEwuMfoi3EGj67aC76xwxowAQLpbLbVGMW7agkwzX82V6xh1zjOBqIhiqHYbyaF
 yVd6r5BMz4VbmSsQ6rCvKNmfk8yfWU+9/KiQ0PdmBWgR/JeRaGFjSPZxUW9F6UL+1/eV
 wU+j+FFe1HlJHonkDpZU+uOHPi21H1I9DZdnZ2Adw2fBBWsnTpd0/OHNFbV2q6NBxxKh
 4VfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4z7p+08vVGRKaFoY5K0HIJAi+xxlVs7dirH0vF1HBV8=;
 b=G510e0SW6XloPJ5sjWzxEKiJJJRybnKt7s+6RjaRl388oD9iXTd+E/XmaCo43sH1Br
 ARhk4Pa9vCO0UzfhDOjmuisAy11S7qzUdZgjZGluDsRg4S9GGdV6SwsgeIZEjAFINTC/
 mudFJoWFGnwba56aRwAUDmx9D6/G12naK0VHzwk+eXfL/Wgh53yeD+9/cKfVbTALqxw6
 HlrWw4I1Q8RqxiwW7YFxTolMQUp1Ail2l5Znxb+8IduF4CidufF36RwuF8/H1qaaXIF/
 uVSxWYiED6m8FYKKbgCT7EjVj55OFI7ilispAraLV4GBashp9YY6D1nwzPzL5W+ASqfj
 v23w==
X-Gm-Message-State: APjAAAWRYwV6BmXdLEtWloY7gjDLatNU93One/q0BwiWW0arfId4uCd0
 PYMxA3CocGB7nUcgeXVGliGWff+jWV7ZLpqyn8s=
X-Google-Smtp-Source: APXvYqzEXZhLUtV7pYNDbu1/3ce7u6Be+J9JdJvlDEwjC+aEheD9+kDaCkP9TtrZOgUEqijXeYpwIxIL2W3izU/ZO14=
X-Received: by 2002:a81:2655:: with SMTP id m82mr4525703ywm.306.1565611848215; 
 Mon, 12 Aug 2019 05:10:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190527200627.8635-1-peron.clem@gmail.com>
 <CAJiuCcfUhBxEr=o7VVpPROQZadQh7z1QC0SkWSYt-53Sj3H2qw@mail.gmail.com>
 <CAJiuCcc3_1jZWV7G3+fFQYRZ8b6qcAbnH+K6pkRvww6_D=OMAw@mail.gmail.com>
 <20190715193842.GC4503@sirena.org.uk>
 <CAJiuCceYDnyxRLLLLy6Dn6DLTZ+NmSaUnoX1Vmzvgiy0XvF_Fw@mail.gmail.com>
 <20190812110103.GD4592@sirena.co.uk>
In-Reply-To: <20190812110103.GD4592@sirena.co.uk>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 12 Aug 2019 14:10:36 +0200
Message-ID: <CAJiuCcdNFbKgo+oGZXKfBpyPKNOuUwpPbHdq-yBpcm3XYtPhEQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] Allwinner H6 SPDIF support
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_051050_027077_06A69AED 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyaywKCk9uIE1vbiwgMTIgQXVnIDIwMTkgYXQgMTM6MDEsIE1hcmsgQnJvd24gPGJyb29u
aWVAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBTYXQsIEF1ZyAxMCwgMjAxOSBhdCAxMDo0NToy
M0FNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4KPiA+IEhpLAo+Cj4gUGxlYXNlIGRv
bid0IHRvcCBwb3N0LCByZXBseSBpbiBsaW5lIHdpdGggbmVlZGVkIGNvbnRleHQuICBUaGlzIGFs
bG93cwo+IHJlYWRlcnMgdG8gcmVhZGlseSBmb2xsb3cgdGhlIGZsb3cgb2YgY29udmVyc2F0aW9u
IGFuZCB1bmRlcnN0YW5kIHdoYXQKPiB5b3UgYXJlIHRhbGtpbmcgYWJvdXQgYW5kIGFsc28gaGVs
cHMgZW5zdXJlIHRoYXQgZXZlcnl0aGluZyBpbiB0aGUKPiBkaXNjdXNzaW9uIGlzIGJlaW5nIGFk
ZHJlc3NlZC4KPgo+ID4gU29ycnksIEkganVzdCBkaXNjb3ZlcmVkIHRoYXQgdGhlIEFTb0MgcGF0
Y2hlcyBoYXZlIGJlZW4gbWVyZ2VkIGludG8KPiA+IHRoZSBicm9vbmllIGFuZCBsaW51cyB0cmVl
IGluIDUuMy4KPgo+ID4gSSdtIHN0aWxsIHF1aXRlIG5ldyBpbiB0aGUgc2VuZGluZyBvZiBwYXRj
aGVzIHRvIHRoZSBLZXJuZWwgYnV0Cj4gPiBzb3VsZG4ndCBiZSBhIGFjayBvciBhIG1haWwgc2Vu
dCB0byB3YXJuIHRoZSBzZW5kZXIgd2hlbiB0aGUgc2VyaWVzCj4gPiBhcmUgYWNjZXB0ZWQ/Cj4K
PiBOb3QgZXZlcnkgbWFpbnRhaW5lciB3aWxsIHNlbmQgdGhvc2UsIEkgZG8gYnV0IHlvdSBtaWdo
dCBmaW5kIHRoZXkndmUKPiBnb25lIGludG8geW91ciBzcGFtIGZvbGRlciBpZiB5b3UncmUgdXNp
bmcgZ21haWwuCgpUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB0aGUgYW5zd2VyLApSZWdhcmRzLApD
bMOpbWVudAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
