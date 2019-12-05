Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BBC1147A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 20:30:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qA/gfEkNvKa6AnP1gYZIldof0WQiVDbi+tTQZ5UkU60=; b=Dml9Bh3+bv44fq
	nAW/C9mNZUPH9jU2TjoGsYiBfwaPoZmFTQmVdYZI0cZxu29j9bV5sSYDyXd8a5qzMufQtkUoXcdJ+
	jqm3HaPHcH+LyUF1l/tsQgysP4YeR+8SxPXwibfBaDfI4yWzzi908mW2uSteB07hsJIqSxkNdGc9m
	pNE08hWYJNOMqq9zQHDX4PtRKKMNDQiCWqSDys0Ft/KejJLS3qXSL7mtjlIDDbDRjC3fsQ5JOL9Am
	ow6cHP8RVotalBhbONllyKh6RBNvkKGYVAXMTjpHlT/Vl0EuU1p2vTUNRAuuuoyognv3zC1F0vSIV
	rUbMipGPkqDy7RDjR5Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icwpK-0002Rh-9U; Thu, 05 Dec 2019 19:30:14 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icwp2-0002QJ-5p
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 19:29:58 +0000
Received: by mail-il1-x141.google.com with SMTP id a7so4039189ild.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 11:29:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=designa-electronics-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=oweoeyLJ5wuv/O8nbELIS9WNEw6UaLFHl0XqAgUsqCk=;
 b=qFLBSr/uos0vfEJX9PkUP1c3pZE2qfX2+mmZJPagLOCjl+ieoEwHU/Tu5EUO0Zv1dD
 XKKa+PL2ASO0VWT28MaSiG8PuFESn/62tM5WII0RxCAd8qbZcFLid6/ZJKdJepT3jYwp
 N6FwgvtQ9ctpCtG8Ob5wjWA2uMrbj7QdgGnQvgMFGuYJu5J6By2k78qh9+R3bA07hknj
 WqvTUrQBDYl/kr/FeQa3RezvJYD9tDQhsDOrWLh6FS2g7cu1ZC57aiyzOsSsVNa+qwlw
 Fu6f4agw8YmWV3LNddb8gFqbN0D9GsCq56FTBcg/1J76UW4pQJ/5zmr8XWtvy295p2GH
 xtow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=oweoeyLJ5wuv/O8nbELIS9WNEw6UaLFHl0XqAgUsqCk=;
 b=NPGBSVp/er8oiCNfMOIsgoMNv+xlsTj7Jn9ev1Hz0nX/XPfVJW/mQCWp9t632LOIxC
 aNy7uBJkXJESjXhlluWrFt6OBzKdIfx9P896O/ruNVeS4hRbEnFIM8si9lu3e0Ohp0Wp
 wz57aHpqYVMWgvVHrAXwTLq9HFohtrajXW1skQXkv2s+4TEgS4FuZMtxM1zY+pr6fa6k
 JwczxvVdhY/uhWYER5nohuvkBcgrIezemQf9GDfuAFrOWurycgHgEMW8/AoBMsXs/nvn
 64cDkQk9HFMUv8JMInKVktpFSOScJZ1jM60TlD+tnycfwBmNgLuuEeMlqpenO6kM7KNl
 T+qw==
X-Gm-Message-State: APjAAAVTEpYzQ9hIG5iNc/vwgLXVBF3KuTpV9o/9jwPVlZaPAaxo8T3M
 54PK5SY8P1yE/VU3gupO/YihxWODoScN0A==
X-Google-Smtp-Source: APXvYqzwg4oBQc5OfgQnUqgZ2JLGXdA3PPq8IPIxAg8ICIqomxVcB36U7fGhNg+YQDcDpvMwcK+9lQ==
X-Received: by 2002:a92:3b0c:: with SMTP id i12mr10304662ila.194.1575574193352; 
 Thu, 05 Dec 2019 11:29:53 -0800 (PST)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com.
 [209.85.166.49])
 by smtp.gmail.com with ESMTPSA id o7sm3097712ilo.58.2019.12.05.11.29.51
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Dec 2019 11:29:52 -0800 (PST)
Received: by mail-io1-f49.google.com with SMTP id f82so4813653ioa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 11:29:51 -0800 (PST)
X-Received: by 2002:a6b:6c16:: with SMTP id a22mr7635979ioh.275.1575574191425; 
 Thu, 05 Dec 2019 11:29:51 -0800 (PST)
MIME-Version: 1.0
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <20191202212948.c6dp7ifcvmjpwfhj@pengutronix.de>
In-Reply-To: <20191202212948.c6dp7ifcvmjpwfhj@pengutronix.de>
From: Andre Renaud <arenaud@designa-electronics.com>
Date: Fri, 6 Dec 2019 08:29:40 +1300
X-Gmail-Original-Message-ID: <CAEj2-1NPUyJ5WFM7hpQZmha=hmehuEOVppV_BQ4K6kcHUBnwpg@mail.gmail.com>
Message-ID: <CAEj2-1NPUyJ5WFM7hpQZmha=hmehuEOVppV_BQ4K6kcHUBnwpg@mail.gmail.com>
Subject: Re: iMX6/UART imprecise external abort
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_112956_397754_D6A75B0E 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel@pengutronix.de,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBEZWMgMywgMjAxOSBhdCAxMDoyOSBBTSBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiBJIHNhdyBhIHNpbWlsYXIgcHJvYmxl
bSBzb21lIHRpbWUgYWdvIG9uIGEgNC4xNC42OSBhbmQgNC4xOS43MiB3aXRoIGEKPiBiYWNrcG9y
dCBvZiB0aGUgVUFSVCBkcml2ZXIgZnJvbSBzb21lIG5ld2VyIHJlbGVhc2UgKGFyb3VuZCA1LjQt
cmMxKQo+IHBsdXMgc29tZSByczQ4NSBpbXByb3ZtZW50cyBhbmQgdGhlIC1ydCBwYXRjaCBhcHBs
aWVkLiBJIGdvdCBzb21lIGlucHV0Cj4gYnkgUk1LIG9uIHRoYXQgYW5kIHRoZSBzaXR1YXRpb24g
aXMgZGlmZmljdWx0LiAgVGhlIGFkZHJlc3Mgd2hlcmUgdGhlCj4gZmF1bHQgaXMgcmVwb3J0ZWQg
dG8gaGF2ZSBoYXBwZW5kIGRvZXNuJ3Qgc2F5IGFueXRoaW5nIGZvciBhbiBpbXByZWNpc2UKPiBl
eHRlcm5hbCBhYm9ydC4KPgo+IE9uIG91ciBlbmQgdGhlIHByb2JsZW0gZG9lc24ndCByZXByb2R1
Y2Ugc28gZWFzaWx5IHVwIHRvIG5vdy4KPgo+IEkgZGlkbid0IGNvbWUgYXJvdW5kIHRvIGRlYnVn
IHRoaXMgcHJvYmxlbSwgeWV0LiBJIHdvdWxkIGRvIHNvbWUKPiBzaG9vdGluZyBpbiB0aGUgZGFy
ayBhbmQgc3RhcnQgd2l0aDoKPgo+ICAtIGRpc2FibGUgRE1BIChkb2Vzbid0IGhlbHAgYWNjb3Jk
aW5nIHRvIHlvdXIgcmVwb3J0KQo+ICAtIHJlcHJvZHVjZSB3aXRob3V0IC1ydCAoc3RpbGwgaGFw
cGVucyBhY2NvcmRpbmcgdG8geW91ciByZXBvcnQpCj4gIC0ga2VlcCB0aGUgVUFSVCBjbG9ja3Mg
b24uIChUcnkgcmVtb3ZpbmcKPiAgICAiY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHNwb3J0LT5jbGtf
aXBnKTsiIGZyb20gaW14X3VhcnRfcHJvYmUoKSkKCkNoYW5naW5nIHRoZSBjbG9ja2luZyBtYWRl
IHRoZSBpc3N1ZSBoYXJkZXIgdG8gcmVwcm9kdWNlLCBidXQgaXQgZGlkCnN0aWxsIG9jY3VyIGV2
ZW50dWFsbHkKCj4gIC0gdHJ5IHRvIHJlcHJvZHVjZSBpbiByczIzMiBtb2RlCj4gIC0gdHJ5IHRv
IHJlY29yZCBzb21lIHRyYWNlcyBvZiB0aGUgcHJvYmxlbQo+ICAgIChpLmUuIGFkZCB0cmFjaW5n
X29mZigpIHRvIHRoZSBmYXVsdCBoYW5kbGVyIGFuZCBlbmFibGUgZnRyYWNlIHdpdGggYQo+ICAg
IGxhcmdlIGVub3VnaCB0cmFjZSBidWZmZXIuKQoKV2UgaGF2ZW4ndCB0cmllZCB0aGVzZSB5ZXQu
CgpXZSBkaWQgdHJ5IGZpZGRsaW5nIHdpdGggdGhlIElSUSBhZmZpbml0eSAtIHdlIHB1c2hlZCB0
aGUgYWZmaW5pdHkgZm9yCnRoZSBJUlEgaXRzZWxmIG9uIHRvIENQVSA0IChpZTogZWNobyA4ID4g
L3Byb2MvaXJxLzY3L3NtcF9hZmZpbml0eSksCmFuZCB0aGVuIHdlIHJhbiBvdXIgdGVzdCBwcm9n
cmFtIG9uIHRoZSBzYW1lIENQVSB3aXRoIHRhc2tzZXQgKGllOgp0YXNrc2V0IDggcnM0ODVfdGVz
dCkuCgpVc2luZyB0aGlzIGNvbmZpZ3VyYXRpb24gSSBoYXZlIG5vdCBzZWVuIHRoZSBpc3N1ZSBy
ZW9jY3VyIG9uIHRoZQo1LjQuMSBrZXJuZWwsIGFsdGhvdWdoIHRoZSBzYW1lIHNldHRpbmdzIGRv
IG5vdCByZXNvbHZlIHRoZSBpc3N1ZSBvbgpvdXIgb2xkZXIgNC44IGtlcm5lbC4KClJlZ2FyZHMs
CkFuZHJlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
