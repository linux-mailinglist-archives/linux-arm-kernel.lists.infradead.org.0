Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AEF6FA86
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 09:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Ty9UuBcu3QI1fPkBXfYA/fs9KG+UoFfyfXFfILEKd8=; b=QLd0Vl5DMyrkZn
	/IKXLpzrX6IYDUevb9FwU+GarX0IK0I4XXxjazFeo8cB467V32LQVD256YjQ3RChf9gqRZCY86qwL
	mWxCjLCcKoYJ5ANWcWw9NILbjWKZSOEj/NInx7tBF3XPb6zK51rqId79e0YxVDSK4I4PNlJ+q82No
	8mmWFC//ZLgBadKT6onSqUfDe0BIUCIImbNaVJahCQ5nKTNBe4ajqMJ55Uw/M5SakPYms3YND+jBG
	Azk6j8EWsJlG99TSj5U3/1GFluHj5O8+brAklFr2XmzrVSDcX9FbwOl9falPkvbubRyxyxPpc09Rp
	sU2wYlJGpg1L6uv4EWJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpSyZ-0006YW-Vi; Mon, 22 Jul 2019 07:43:16 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpSyL-0006Y3-Ld
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 07:43:03 +0000
Received: by mail-lf1-x141.google.com with SMTP id c19so25880819lfm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 00:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=3PMu8WKLSHH9AHwB3m+He0cpFsjv9J7xW+4o1jsaXQw=;
 b=Rydv+EgmgqLi+IIHj2yz4gGGj2B/JrhRa6SHS+DLnqNjV2/ZlG8DjYRpQ3gOmrkb5g
 NJTx9kDYBR2apFNo0cc8ZcvhBtmBAyprBh0Az3N3Pf+e/xyn9yVrWecAfWl0y/5zN7K5
 X+rnUBTLQhAxlqkn+iezFQUmPrekGfvIsZxfuSK00NUFEIgmqPjTlXzUUGJgBV7vow/U
 HZH6mwyF0iUQyijb9QazZyCy3QFaLNXPFG6epHbciPQglsYSBqA3yJRVH3/LVodM9O9V
 vLlMwpbAs5f6VM9CqVow0IrIKQ2Uad/B5WL1E2sHXGxdIy1gTNMWAGASC23zfCmykI1y
 c56w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=3PMu8WKLSHH9AHwB3m+He0cpFsjv9J7xW+4o1jsaXQw=;
 b=CT3d2GvZwt2eocnT70fcBhA1LyEtNHkl3Y7JjZF47aYz+dF6ZG5AC0gNURFqkRTI9x
 33MmM82CmavgGw1kzSoKIfKPFJbG/IMY0dVArEHQ2hIouAXPG0tGcEmZMHeRt9lJDe2P
 yRY9Bbzulz/BxMtVXdm5smHTtZV12TLRu+z6DuH5c11V1wNRBTwYW4OsGyyGeNklsL8s
 9AvBjHvo+V5+iitF1zgdXKkjVHPzXHY+kP68wjs6/n0QI+UGVd20tc8Xxl4yImRtaBtR
 0ecqQPNAw5bztE5HmFb4tFeuKMTwJutBB7AQ9b2er8TxmNKR62PzOqLdViTAFk/UD/5s
 +UGg==
X-Gm-Message-State: APjAAAW5fsvJLAb4+CSIWj4nCBcZR+wzRLFTc6dk2QW+ETk2RPcLiTiR
 1nTvCVcgJBkLrZeJcvFJZWVbRcxC
X-Google-Smtp-Source: APXvYqz1ffzkA9NGjXdlOLU/c7kHpBEBfUI2muxloQadjts/O/fXQHBOiXc3M1ZdCE8lXgw1bFZsgw==
X-Received: by 2002:ac2:5492:: with SMTP id t18mr32281130lfk.41.1563781379123; 
 Mon, 22 Jul 2019 00:42:59 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id w1sm8460317ljm.81.2019.07.22.00.42.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 00:42:58 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v4 1/3] serial: imx: set_termios(): do not enable autoRTS
 if RTS is unset
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563526074-20399-1-git-send-email-sorganov@gmail.com>
 <1563526074-20399-2-git-send-email-sorganov@gmail.com>
 <20190719091143.uhjxeibtolgswq2l@pengutronix.de>
 <87h87idxq2.fsf@osv.gnss.ru>
 <20190719143151.gx43ndn2oy35h247@pengutronix.de>
 <87woge9hvz.fsf@osv.gnss.ru>
 <20190719201949.ldqlcwjhcmt7wwhg@pengutronix.de>
Date: Mon, 22 Jul 2019 10:42:57 +0300
In-Reply-To: <20190719201949.ldqlcwjhcmt7wwhg@pengutronix.de> ("Uwe
 \=\?utf-8\?Q\?Kleine-K\=C3\=B6nig\=22's\?\= message of "Fri,
 19 Jul 2019 22:19:49 +0200")
Message-ID: <87ftmy8qgu.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_004301_710115_F3134898 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
OgoKPiBPbiBGcmksIEp1bCAxOSwgMjAxOSBhdCAwNjoxMzo1MlBNICswMzAwLCBTZXJnZXkgT3Jn
YW5vdiB3cm90ZToKPj4gSGVsbG8gVXdlLAo+PiAKPj4gVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xl
aW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVzOgo+PiA+IEhlbGxvIFNlcmdleSwKPj4g
Pgo+PiA+IE9uIEZyaSwgSnVsIDE5LCAyMDE5IGF0IDAzOjE4OjEzUE0gKzAzMDAsIFNlcmdleSBP
cmdhbm92IHdyb3RlOgo+PiA+PiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBl
bmd1dHJvbml4LmRlPiB3cml0ZXM6Cj4+ID4+ID4gT24gRnJpLCBKdWwgMTksIDIwMTkgYXQgMTE6
NDc6NTJBTSArMDMwMCwgU2VyZ2V5IE9yZ2Fub3Ygd3JvdGU6Cj4+ID4+ID4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMgYi9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMKPj4g
Pj4gPj4gaW5kZXggNTdkNmU2Yi4uOTVkNzk4NCAxMDA2NDQKPj4gPj4gPj4gLS0tIGEvZHJpdmVy
cy90dHkvc2VyaWFsL2lteC5jCj4+ID4+ID4+ICsrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXgu
Ywo+PiA+PiA+PiBAQCAtNDA1LDcgKzQwNSw4IEBAIHN0YXRpYyB2b2lkIGlteF91YXJ0X3J0c19p
bmFjdGl2ZShzdHJ1Y3QgaW14X3BvcnQgKnNwb3J0LCB1MzIgKnVjcjIpCj4+ID4+ID4+ICAvKiBj
YWxsZWQgd2l0aCBwb3J0LmxvY2sgdGFrZW4gYW5kIGlycXMgY2FsbGVyIGRlcGVuZGVudCAqLwo+
PiA+PiA+PiAgc3RhdGljIHZvaWQgaW14X3VhcnRfcnRzX2F1dG8oc3RydWN0IGlteF9wb3J0ICpz
cG9ydCwgdTMyICp1Y3IyKQo+PiA+PiA+PiAgewo+PiA+PiA+PiAtCSp1Y3IyIHw9IFVDUjJfQ1RT
QzsKPj4gPj4gPj4gKwlpZiAoKnVjcjIgJiBVQ1IyX0NUUykKPj4gPj4gPj4gKwkJKnVjcjIgfD0g
VUNSMl9DVFNDOwo+PiA+PiA+Cj4+ID4+ID4gSSB0aGluayB0aGlzIHBhdGNoIGlzIHdyb25nIG9y
IHRoZSBjb21taXQgbG9nIGlzIGluc3VmZmljaWVudC4KPj4gPj4gPiBpbXhfdWFydF9ydHNfYXV0
bygpIGhhcyBvbmx5IGEgc2luZ2xlIGNhbGxlciBhbmQgdGhlcmUgdWNyMiAmIFVDUjJfQ1RTIGlz
Cj4+ID4+ID4gbmV2ZXIgdHJ1ZS4gQW5kIENUU0MgaXNuJ3QgcmVzdG9yZWQgYW55d2hlcmUsIGlz
IGl0Pwo+PiA+PiAKPj4gPj4gVGhpcyBpcyByZWJhc2UgdG8gJ3R0eS1uZXh0JyBicmFuY2gsIGFu
ZCB5b3UgbmVlZCB0byBsb29rIGF0IGl0IGluIHRoYXQKPj4gPj4gY29udGV4dC4gVGhlcmUsIHVj
cjIgJiBVQ1IyX0NUUyBkb2VzIGFscmVhZHkgbWFrZSBzZW5zZSwgZHVlIHRvIHByZXZpb3VzCj4+
ID4+IGZpeCB0aGF0IGlzIGFscmVhZHkgdGhlcmUuCj4+ID4KPj4gPiBJIGxvb2tlZCBhdCA1N2Q2
ZTZiIHdoaWNoIGlzIHRoZSBmaWxlIHlvdSBwYXRjaGVkLiBBbmQgdGhlcmUKPj4gPiBpbXhfdWFy
dF9ydHNfYXV0byBpcyBvbmx5IGV2ZXIgY2FsbGVkIHdpdGggKnVjcjIgbm90IGhhdmluZyBVQ1Iy
X0NUUy4KPj4gPgo+PiA+IElmIHlvdSBzdGlsbCB0aGluayBJJ20gd3JvbmcsIHBsZWFzZSBpbXBy
b3ZlIHRoZSBjb21taXQgbG9nCj4+ID4gYWNjb3JkaW5nbHkuCj4+IAo+PiBJIHN0aWxsIHRoaW5r
IHlvdSBhcmUgd3JvbmcsIGJ1dCBJIGRvbid0IGtub3cgaG93IHRvIGltcHJvdmUgY29tbWl0IGxv
Zy4KPj4gCj4+IFRvIGNoZWNrIGl0IG9uY2UgYWdhaW4sIEkganVzdCBkaWQ6Cj4+IAo+PiAkIGdp
dCBzaG93IDU3ZDZlNmIgPiBpbXguYwo+PiAKPj4gVGhlcmUsIGluIGlteF91YXJ0X3NldF90ZXJt
aW9zKCksIEkgc2VlOgo+PiAKPj4gMTU2OToJb2xkX3VjcjIgPSBpbXhfdWFydF9yZWFkbChzcG9y
dCwgVUNSMik7Cj4+IDE1NzA6CXVjcjIgPSBvbGRfdWNyMiAmIChVQ1IyX1RYRU4gfCBVQ1IyX1JY
RU4gfCBVQ1IyX0FURU4gfCBVQ1IyX0NUUyk7Cj4+IAo+PiBIZXJlLCBjdXJyZW50IFVDUjIgdmFs
dWUgaXMgcmVhZCBpbnRvICdvbGRfdWNyMicgYW5kIHRoZW4gaXRzIC9jdXJyZW50Lwo+PiBVQ1Iy
X0NUUyBiaXQgaXMgY29waWVkIGludG8gJ3VjcjInIChhbG9uZyB3aXRoIDMgb3RoZXIgYml0cyku
Cj4+IAo+PiBUaGVuLCBsYXRlciBpbiB0aGUgc2FtZSBmdW5jdGlvbjoKPj4gCj4+IDE1OTE6CQlp
bXhfdWFydF9ydHNfYXV0byhzcG9ydCwgJnVjcjIpOwo+PiAKPj4gaXMgY2FsbGVkIHRoYXQgY2Fu
IGNoZWNrIC9jdXJyZW50LyBzdGF0ZSBvZiBVQ1IyX0NUUyBiaXQgaW4gJyp1Y3IyJy4KPj4gCj4+
IFRoYXQncyB3aGF0IHRoZSBwYXRjaCBkb2VzLCBjaGVja3MgdGhpcyBiaXQuCj4+IAo+PiBTb3Jy
eSwgSSBmYWlsIHRvIHNlZSBob3cgeW91IGNhbWUgdG8gY29uY2x1c2lvbiB0aGF0ICIqdWNyMiBu
b3QgaGF2aW5nCj4+IFVDUjJfQ1RTIi4gRG8gd2UgbWF5YmUgc3RpbGwgcmVhZCBkaWZmZXJlbnQg
dmVyc2lvbnMgb2YgdGhlIGZpbGU/Cj4KPiBObywgaXQncyBqdXN0IHRoYXQgSSBmYWlsZWQgdG8g
c2VlIHRoYXQgVUNSMl9DVFMgaXMgaW4gdGhlIHNldCBvZiBiaXRzCj4gdGhhdCBhcmUgcmV0YWlu
ZWQgZXZlbiB3aGVuIGxvb2tpbmcgdHdpY2UgOi18CgpBaCwgdGhhdCBvbmUuLi4gSG93IGZhbWls
aWFyIDotKQoKPiBTbyB5b3UgY29udmluY2VkIG1lIHRoYXQgeW91IGFyZSByaWdodCBhbmQgaWYg
eW91IHVwZGF0ZSB0aGUgY29tbWl0IGxvZwo+IGFzIGFncmVlZCBhbHJlYWR5IGJlZm9yZSBhbmQg
ZXZlbiBhZGQgYSBjb21tZW50IGluIGlteF91YXJ0X3J0c19hdXRvCj4gYWxvbmcgdGhlIGxpbmVz
IG9mCj4KPiAJLyoKPiAJICogT25seSBsZXQgdGhlIHJlY2VpdmVyIGNvbnRyb2wgUlRTIG91dHB1
dCBpZiB3ZSB3ZXJlIG5vdAo+IAkgKiByZXF1ZXN0ZWQgdG8gaGF2ZSBSVFMgaW5hY3RpdmUgKHdo
aWNoIHRoZW4gc2hvdWxkIHRha2UKPiAJICogcHJlY2VkZW5jZSkuCj4gCSAqLwo+Cj4geW91IGNh
biBoYXZlIG15IEFjay4KCk9LLCB3aWxsIGRvCgpUaGFua3MhCgotLSBTZXJnZXkKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
