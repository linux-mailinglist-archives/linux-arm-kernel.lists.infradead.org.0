Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B12A88A20
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 10:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7vnRfF3MLYRUDBCjAnLP3oUwn+sxHYiAlA9+LAPOKw4=; b=ffl21GFQBCJjzV
	StuVCC+COKnWFSCfxXifKMuKod3rfWuky8Fss/MWOCwbbkrfsNkA6RR33stpQozZ9mRFjDsJ6x0NQ
	zjuSJ3oeurMZEmj2aTQ4Abb28JSin80RMYSlJOaCWiCDlQihu0wbgpDKR80if6EbWlew0mhoLfJYh
	PfGg57mIeSIombWmm8rMsVIDl2A6gL4fu72MXyGTeoXU7JATRW4z8MnpUOXd29Vi/foQ0BXf1t+yQ
	c0LbEy6PMsZCEM3S05VKzL39bPcrOePlcIIxtpSq75kPfDgRqqrEC7Ki9kAnurFJX3RYVFzAcDh3t
	JypqrAfqL0vA/xU0b49g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwN0Y-0003bC-8Q; Sat, 10 Aug 2019 08:45:50 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwN0K-0003aQ-M5
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 08:45:37 +0000
Received: by mail-yb1-xb44.google.com with SMTP id t5so3294916ybt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 10 Aug 2019 01:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4N2DP4l2LpXR0ja9/QlgTCxk89cb9ApRuW6Y7KL7/QM=;
 b=tFjHxYGsshA6uhC4ZyO8gQA5CGqOklLRWWxRbDw74L/pi+b9ttnCV0SxJXzM1GWIvS
 F9rYQq1hBhIsaxKOI08ZyaGxkadwK312OhWil5n/UwwkKSmadnu/olRJh1TePylAFF1P
 4ktVi+A2LsntpLrg+0r5GSjYQS6MoaBf5QcbFDhiWv7xJnDJnGAAFTUKJLcAwhajChY9
 OyZKinHBA6UhYKPjOgT2ZHjTfw/jp+Njsc09CGDN2oGgyuMarC1b8lJbRsvnx9Il0N93
 Q2aGmNoPzI8TmYFqu0vVtm5p9ZXDTei6QktQwpM52ZY7q5UI24kSvWdBmw3r3ttiWOfn
 PRfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4N2DP4l2LpXR0ja9/QlgTCxk89cb9ApRuW6Y7KL7/QM=;
 b=sOHkzlhxZ6gsuQ472+AVkqaST2nKeq6QtIzA2O7qY8BIU9uaYrCmcJDQ1cEmlgrxWe
 KnAXNUM7Gz5DVC/jYm3AqKi8RmeOlMOlllPWskox+WtLxQIolyxn1nu/wM0B21JJ8bDf
 9FGRLFGNAGJkMr6VKWvGAeG3cUVgCjwe2F31s/a0uRrtjQF+omBj7ji/11WptGuYVKXw
 z+2iRXF86k9EiicIDMmjS9OGPUXfErDuUp5uhThi6dHsswZ/e5RCQ0+6u1Ikd7NpLvPL
 1AySBhKSAXS4ftV4vulaNppgLgt5vLPcmiDSLJSYfPfhg+Ze6Px9fLYy0RNEcwp6T1/U
 NtVg==
X-Gm-Message-State: APjAAAW9HrCO35EEVelaDUoa9Ry5KGEFepRVEVYMeJDOyx/H4gbolJ90
 jDAz5Ap3Z0SPgLNzIyvMGyb59FilGr8q86mSImY=
X-Google-Smtp-Source: APXvYqwYP1MVAOUz7wJvEpUhVTE97jzCm1T5VZgDMaOxdDC99C9zKxDOMpuB6Lus4uMwey10ooqmjZMMWn1jbSlbvgQ=
X-Received: by 2002:a25:9109:: with SMTP id v9mr17429940ybl.396.1565426734980; 
 Sat, 10 Aug 2019 01:45:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190527200627.8635-1-peron.clem@gmail.com>
 <CAJiuCcfUhBxEr=o7VVpPROQZadQh7z1QC0SkWSYt-53Sj3H2qw@mail.gmail.com>
 <CAJiuCcc3_1jZWV7G3+fFQYRZ8b6qcAbnH+K6pkRvww6_D=OMAw@mail.gmail.com>
 <20190715193842.GC4503@sirena.org.uk>
In-Reply-To: <20190715193842.GC4503@sirena.org.uk>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sat, 10 Aug 2019 10:45:23 +0200
Message-ID: <CAJiuCceYDnyxRLLLLy6Dn6DLTZ+NmSaUnoX1Vmzvgiy0XvF_Fw@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] Allwinner H6 SPDIF support
To: Mark Brown <broonie@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_014536_747110_30DC7DE3 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

SGksCgpTb3JyeSwgSSBqdXN0IGRpc2NvdmVyZWQgdGhhdCB0aGUgQVNvQyBwYXRjaGVzIGhhdmUg
YmVlbiBtZXJnZWQgaW50bwp0aGUgYnJvb25pZSBhbmQgbGludXMgdHJlZSBpbiA1LjMuCgpJJ20g
c3RpbGwgcXVpdGUgbmV3IGluIHRoZSBzZW5kaW5nIG9mIHBhdGNoZXMgdG8gdGhlIEtlcm5lbCBi
dXQKc291bGRuJ3QgYmUgYSBhY2sgb3IgYSBtYWlsIHNlbnQgdG8gd2FybiB0aGUgc2VuZGVyIHdo
ZW4gdGhlIHNlcmllcwphcmUgYWNjZXB0ZWQ/CgpTaG91bGQgNS82LzcgcGF0Y2hlcyBiZSBwaWNr
ZWQgYnkgU3VueGkgbWFpbnRhaW5lcj8KClRoYW5rcywKQ2zDqW1lbnQKCgoKCgpPbiBNb24sIDE1
IEp1bCAyMDE5IGF0IDIxOjM4LCBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5lbC5vcmc+IHdyb3Rl
Ogo+Cj4gT24gTW9uLCBKdWwgMTUsIDIwMTkgYXQgMDk6MjE6MDFQTSArMDIwMCwgQ2zDqW1lbnQg
UMOpcm9uIHdyb3RlOgo+ID4gSGksCj4gPgo+ID4gSSdtIG1pc3NpbmcgQUNLIGZyb20gQVNvQyBN
YWludGFpbmVycyBwYXRjaCAyLTMtNC4KPiA+Cj4gPiBJdCdzIHJlYWxseSBzbWFsbCBwYWNoZXMs
IGlmIHlvdSBjb3VsZCBoYXZlIGEgbG9vayBhdCBpdC4KPgo+IFBsZWFzZSBkb24ndCBzZW5kIGNv
bnRlbnQgZnJlZSBwaW5ncyBhbmQgcGxlYXNlIGFsbG93IGEgcmVhc29uYWJsZSB0aW1lCj4gZm9y
IHJldmlldy4gIFBlb3BsZSBnZXQgYnVzeSwgZ28gb24gaG9saWRheSwgYXR0ZW5kIGNvbmZlcmVu
Y2VzIGFuZCBzbwo+IG9uIHNvIHVubGVzcyB0aGVyZSBpcyBzb21lIHJlYXNvbiBmb3IgdXJnZW5j
eSAobGlrZSBjcml0aWNhbCBidWcgZml4ZXMpCj4gcGxlYXNlIGFsbG93IGF0IGxlYXN0IGEgY291
cGxlIG9mIHdlZWtzIGZvciByZXZpZXcuICBJZiB0aGVyZSBoYXZlIGJlZW4KPiByZXZpZXcgY29t
bWVudHMgdGhlbiBwZW9wbGUgbWF5IGJlIHdhaXRpbmcgZm9yIHRob3NlIHRvIGJlIGFkZHJlc3Nl
ZC4KPgo+IFNlbmRpbmcgY29udGVudCBmcmVlIHBpbmdzIGFkZHMgdG8gdGhlIG1haWwgdm9sdW1l
IChpZiB0aGV5IGFyZSBzZWVuIGF0Cj4gYWxsKSB3aGljaCBpcyBvZnRlbiB0aGUgcHJvYmxlbSBh
bmQgc2luY2UgdGhleSBjYW4ndCBiZSByZXZpZXdlZAo+IGRpcmVjdGx5IGlmIHNvbWV0aGluZyBo
YXMgZ29uZSB3cm9uZyB5b3UnbGwgaGF2ZSB0byByZXNlbmQgdGhlIHBhdGNoZXMKPiBhbnl3YXks
IHNvIHNlbmRpbmcgYWdhaW4gaXMgZ2VuZXJhbGx5IGEgYmV0dGVyIGFwcHJvYWNoIHRob3VnaCB0
aGVyZSBhcmUKPiBzb21lIG90aGVyIG1haW50YWluZXJzIHdobyBsaWtlIHRoZW0gLSBpZiBpbiBk
b3VidCBsb29rIGF0IGhvdyBwYXRjaGVzCj4gZm9yIHRoZSBzdWJzeXN0ZW0gYXJlIG5vcm1hbGx5
IGhhbmRsZWQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
