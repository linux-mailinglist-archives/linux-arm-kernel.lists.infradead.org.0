Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464B616F2B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 23:46:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOMeg5sWM/2vHmtt8jdkUQkP+20ynHghtqmriRyT3uw=; b=GWaPd7eru9GOID
	lS00TU6HvXb87xaDAbvFd5xxPImr63DvwJ9aYdrzlCW5yQFacHG8BPazLdhYTtjl2xvocRTPwS0/k
	UyDZsayA1lBUbNwbKxJGd7S3JHKV3w4/1SC86i9vc7iL017FW4SJzyMNbWY3AcLeNdx9SbWqVXnWv
	YDC5+oBW2Adq5ggma0+IbYcTMWYEqYChta0Isrm/IFMRcafS5g8kc2AW6kOYRwR9f7HXrT2WbJ4Xv
	daZGHjp498QYv36YvLxhtsVHmXTL7WuDHJeqsQGMe8Rd8563GwBkwEdfHADLE2Ac0ujypBooSOUDb
	MaO179EmxxBlRCkOWQcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6iyT-00032x-94; Tue, 25 Feb 2020 22:46:45 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6iyL-00032S-9W
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 22:46:38 +0000
Received: by mail-pf1-x441.google.com with SMTP id 185so358716pfv.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 14:46:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MIqEZR3STz4QmJr+fA8HRU8cSaP8JPrg45nVIamGD0w=;
 b=gBECvMi7LHmxCEXE4SlEiKIpMkovh72MZMxjWYJzsDNBuxk7ho0+Wof+H2bOJqtXS7
 rUCWlKnKNGbWHQza9F05epdVS1Rdwh0pk03rGO+AJnno5ul+MTbPjK9L+oJb3OhW6hfC
 84Lupv2kd2qDNzvwLPNxAltuBFabP1Dktlyf8Cgp9b8OnFlgn3uPyYI8815zJIuhdhAz
 n8MhfVeFTXr9HScaQx/56l2tsfGKRjNlQ/js/vH0krXT3/p1QMpJaV8NLDlyeFfbv8Yf
 Ey9hZCmxEHjGglNbV/XRFfwQVHA2+v1ZxJquLPR/9y5GIpo63W3mYrPKl1WfLs8DGrum
 +8YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MIqEZR3STz4QmJr+fA8HRU8cSaP8JPrg45nVIamGD0w=;
 b=Cw6iVm5BLU6jwqqn/8Gt+i9GSXwzdY3ZsvSeV6Y+SPRTvWTu46UUTMsn9/e1PCo8Zx
 8458c4PqoPcenaThc3d0EdXoPjcMhF6/S4CzXoNc6/amOePJTAyaWSvcwfM93kS7Yla4
 A+QXasfmEU8Y184SzOfnL8ofarTd5DE6FqSZnYl2jytFnJzX6z1Wdm9CHbkOafE8N5da
 XE22uSTNx/ZncrjJljp6GzCHIvIZFwAhgikT9tpjDPERM+e2r+DlLkkecAaL/7Tk56M9
 l2j/TTKQCcPkVgQONwXGFOXuTQu5sPtIFCcI4j/oUCuJKvn8xk0kVJCtlJmNEFGCGkO1
 mh7g==
X-Gm-Message-State: APjAAAX+3W+w9uUZdtmmN5/JSzQfO1AOy7oZom48tILhr1Sy3csyURWL
 wkX4i5oBQug09Ej3EveaOtPyNa6trGNqifvrIZY/5g==
X-Google-Smtp-Source: APXvYqwHTLpFzklEVgvmhFd6xmy3Duncd4nkGPcODLzjvt//m/hCcXy9QQ9L0gxJZfEvCTquEvEHvkK9xDmmkXahrxg=
X-Received: by 2002:a62:1615:: with SMTP id 21mr1010975pfw.84.1582670794833;
 Tue, 25 Feb 2020 14:46:34 -0800 (PST)
MIME-Version: 1.0
References: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
 <CAKwvOdmV80xgvBnhB6ZpqYaqkxKi-_p+StnMojwNnf3kdxTT1A@mail.gmail.com>
 <CAKv+Gu881ZSwvuACmsbBnpfdeJpNYsEQxLSoepJBbZ=O6D6Rcg@mail.gmail.com>
 <CAKwvOd=9WaeVjvgkkLf5scFaNTpx28d4FAse62vv4X_mEwqRJA@mail.gmail.com>
In-Reply-To: <CAKwvOd=9WaeVjvgkkLf5scFaNTpx28d4FAse62vv4X_mEwqRJA@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 25 Feb 2020 14:46:22 -0800
Message-ID: <CAKwvOdk-R7gYXr6PScgZcvHbCBF3TX+utMix44kZCo=qe1vZ2Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: use assembly mnemonics for VFP register access
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_144637_358805_9DB4DFCE 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Jian Cai <jiancai@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>, Russell King <linux@armlinux.org.uk>,
 Peter Smith <Peter.Smith@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBGZWIgMjUsIDIwMjAgYXQgMTI6MjcgUE0gTmljayBEZXNhdWxuaWVycwo8bmRlc2F1
bG5pZXJzQGdvb2dsZS5jb20+IHdyb3RlOgo+Cj4gT24gVHVlLCBGZWIgMjUsIDIwMjAgYXQgMTE6
MzMgQU0gQXJkIEJpZXNoZXV2ZWwKPiA8YXJkLmJpZXNoZXV2ZWxAbGluYXJvLm9yZz4gd3JvdGU6
Cj4gPgo+ID4gT24gVHVlLCAyNSBGZWIgMjAyMCBhdCAyMDoxMCwgTmljayBEZXNhdWxuaWVycyA8
bmRlc2F1bG5pZXJzQGdvb2dsZS5jb20+IHdyb3RlOgo+ID4gPiBBaCwgdGhpcyBpcyBvbmx5IHdo
ZW4gc3RyZWFtaW5nIHRvIGFzc2VtYmx5LiBMb29rcyBsaWtlIHRoZXkgaGF2ZSB0aGUKPiA+ID4g
c2FtZSBlbmNvZGluZywgYW5kIHByb2R1Y2UgdGhlIHNhbWUgZGlzYXNzZW1ibHkuIChHb2Rib2x0
IGVtaXRzCj4gPiA+IGFzc2VtYmx5IGJ5IGRlZmF1bHQsIGFuZCBoYXMgdGhlIG9wdGlvbiB0byBj
b21waWxlLCB0aGVuIGRpc2Fzc2VtYmxlKS4KPiA+ID4gSWYgSSB0YWtlIG15IGNhc2UgZnJvbSBn
b2Rib2x0IGFib3ZlOgo+ID4gPgo+ID4gPiDinpwgIC90bXAgYXJtLWxpbnV4LWdudWVhYmloZi1n
Y2MgLU8yIC1jIHguYwo+ID4gPiDinpwgIC90bXAgbGx2bS1vYmpkdW1wIC1kciB4Lm8KPiA+ID4K
PiA+ID4geC5vOiBmaWxlIGZvcm1hdCBlbGYzMi1hcm0tbGl0dGxlCj4gPiA+Cj4gPiA+Cj4gPiA+
IERpc2Fzc2VtYmx5IG9mIHNlY3Rpb24gLnRleHQ6Cj4gPiA+Cj4gPiA+IDAwMDAwMDAwIGJhcjoK
PiA+ID4gICAgICAgIDA6IGYxIGVlIDEwIDBhICAgICAgICAgICAgICAgICAgdm1ycyByMCwgZnBz
Y3IKPiA+ID4gICAgICAgIDQ6IDcwIDQ3ICAgICAgICAgICAgICAgICAgICAgICAgYnggbHIKPiA+
ID4gICAgICAgIDY6IDAwIGJmICAgICAgICAgICAgICAgICAgICAgICAgbm9wCj4gPiA+Cj4gPiA+
IDAwMDAwMDA4IGJhejoKPiA+ID4gICAgICAgIDg6IGYxIGVlIDEwIDBhICAgICAgICAgICAgICAg
ICAgdm1ycyByMCwgZnBzY3IKPiA+ID4gICAgICAgIGM6IDcwIDQ3ICAgICAgICAgICAgICAgICAg
ICAgICAgYnggbHIKPiA+ID4gICAgICAgIGU6IDAwIGJmICAgICAgICAgICAgICAgICAgICAgICAg
bm9wCj4gPiA+Cj4gPiA+IFNvIGluZGVlZCBhIHNpbWlsYXIgZW5jb2RpbmcgZXhpc3RzIGZvciB0
aGUgdHdvIGRpZmZlcmVudCBhc3NlbWJsZXIKPiA+ID4gaW5zdHJ1Y3Rpb25zLgo+ID4KPiA+IERv
ZXMgdGhhdCBob2xkIGZvciBBUk0gKEEzMikgaW5zdHJ1Y3Rpb25zIGFzIHdlbGw/Cj4KPiBUSUwg
LW10aHVtYiBpcyB0aGUgZGVmYXVsdCBmb3IgYXJtLWxpbnV4LWdudWVhYmloZi1nY2MgLU8yLgo+
Cj4g4p6cICAvdG1wIGFybS1saW51eC1nbnVlYWJpaGYtZ2NjIC1PMiAtYyB4LmMgLW1hcm0KPiDi
npwgIC90bXAgbGx2bS1vYmpkdW1wIC1kciB4Lm8KPgo+IHgubzogZmlsZSBmb3JtYXQgZWxmMzIt
YXJtLWxpdHRsZQo+Cj4KPiBEaXNhc3NlbWJseSBvZiBzZWN0aW9uIC50ZXh0Ogo+Cj4gMDAwMDAw
MDAgYmFyOgo+ICAgICAgICAwOiAxMCAwYSBmMSBlZSAgICAgICAgICAgICAgICAgIHZtcnMgcjAs
IGZwc2NyCj4gICAgICAgIDQ6IDFlIGZmIDJmIGUxICAgICAgICAgICAgICAgICAgYnggbHIKPgo+
IDAwMDAwMDA4IGJhejoKPiAgICAgICAgODogMTAgMGEgZjEgZWUgICAgICAgICAgICAgICAgICB2
bXJzIHIwLCBmcHNjcgo+ICAgICAgICBjOiAxZSBmZiAyZiBlMSAgICAgICAgICAgICAgICAgIGJ4
IGxyCj4KPiBeIEp1c3QgdG8gc2hvdyB0aGUgbWF0Y2hpbmcgZW5jb2RpbmcuCgpGdXJ0aGVyLCBQ
ZXRlciBqdXN0IHNlbnQgbWUgdGhpcyByZXNwb25zZSBvZmYgdGhyZWFkLCB3aGljaCBJIHRob3Vn
aHQKSSdkIHNoYXJlLiBUaGFua3MgUGV0ZXIuICBCb29rbWFya2VkLgpgYGAKRldJVyB0aGUgQXJt
IEFSTSByZWZlcmVuY2UgbWFudWFsCmh0dHBzOi8vc3RhdGljLmRvY3MuYXJtLmNvbS9kZGkwNDg3
L2VhL0RESTA0ODdFX2FfYXJtdjhfYXJtLnBkZiBoYXMgYQp0YWJsZSB0aGF0IG1hcHMgdGhlIHBy
ZS1VQUwgc3ludGF4IHRvIHRoZSBVQUwgc3ludGF4LgoKSzYuMS4yIFByZS1VQUwgaW5zdHJ1Y3Rp
b24gc3ludGF4IGZvciB0aGUgQTMyIGZsb2F0aW5nLXBvaW50IGluc3RydWN0aW9ucwpUaGlzIGhh
cyBhbiBlbnRyeSBtYXBwaW5nIHByZS1VQUwgKEZNUlgpIHRvIFVBTCAoVk1TUikKClNvIHRoZXkg
YXJlIHRoZSBzYW1lIGluc3RydWN0aW9uIHdpdGggdGhlIG1vZGVybiBuYW1lIGJlaW5nIFZNU1Iu
IElmCml0IGlzIHBvc3NpYmxlIHRvIHVzZSB0aGUgbmV3IG5hbWUgaXQgd2lsbCBwcm9iYWJseSBj
b25mdXNlIGZld2VyCnBlb3BsZSwgYnV0IG90aGVyIHRoYW4gdGhhdCBpdCB3b24ndCBkbyBhbnkg
aGFybS4KYGBgCi0tIApUaGFua3MsCn5OaWNrIERlc2F1bG5pZXJzCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
