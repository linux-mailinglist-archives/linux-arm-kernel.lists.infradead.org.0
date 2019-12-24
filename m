Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC25129FC7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 10:45:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eeAKxEpq59S2iGP6Tl0zkeZTGYoWaPQUmUamR+PoM6g=; b=li4/KQQv/iCqjb
	RnQTGYbCTvIp9Fh+oWGxsny9SO7ac+TAYe7D6NxiDKBwlwGiSsis1/FdUSD/vUWnG7253NjPsgla0
	2RAZuzn4f0HfXX6A5ZS/B1rtRgwxX7zinCmnbEwg4PSFDdMUZO5Xz3WR6AdiWKRw3MkD8/CvZdGu5
	pdvtfv+jorj8wuVrFNff8z3YKYHl8NGeR7sTsShxVeaAT2Cx6stVW0PscGCvjobckb/g303MnPqZ8
	iA+/8IhaPykuai+pkZBIaVNOWExMR95tIZIpuW/iLxEuCg7UxvAXxzf9pflvfFwN8AVAFFRIAw/sn
	phkVS3Kiny9CyZEbPdEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijgkg-0007Yu-5g; Tue, 24 Dec 2019 09:45:18 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijgkR-0006kt-V5; Tue, 24 Dec 2019 09:45:05 +0000
Received: by mail-lj1-x241.google.com with SMTP id l2so20322076lja.6;
 Tue, 24 Dec 2019 01:45:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=P6IbNtAeZX26SPmEoOJPgBtk2mM++6U9PCnvdGJBX/k=;
 b=e+MwYW7oNYxt3VheW4hLM/PG7DtRwDCUyVZEs6t0T7+8CE+Yl7MfenhngT0/OgHYUG
 1lrshywM55Sw3A3VTCUPBRuE3JJbu1kuaAxioCZ7faxd1bBQIlZmcWnEG1Fj7RK+fOSt
 2Lv23+L1v+oV4bsxI0R2inbM9Q1S93sv1Zh+5pjyczVpfhGPOg4d5esrH2SdkLPYLf3Z
 xXvoKb5lmt2a7hFNWx7/qU8Nm4tBa7JfacilrwSEZroidCpRIy/6ApFJF9ziTBrxehx0
 oPv7Fli/WO1dT6FbrP9AqdpphfO53BKok986EyjqmbOoXUxJuuAk9G/X5O0ohvp+lAaq
 WbzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=P6IbNtAeZX26SPmEoOJPgBtk2mM++6U9PCnvdGJBX/k=;
 b=Ut7roK8WaZqdX+16HuV+Udox4/OE5K7LSIKKAne9+2iaQw+OIHHzeTqTEGzBgy/QWG
 3uCWkrY5aXa7cDj771yD2BdhKGX1w8SuCfa4dGuDlAV/3Z57Vf6cnXyrhxnIRx/0i4eN
 mVcGwwymxwj2NBAQb5xfblObs63Bc5jL8wWaiXr1flMR8gbmKblBnZNhoAJFkS971Tma
 0FwoqDqYcwHbYcm/myoCDE/5dBsHb7X3ZRhNxh+YuofXnrw9i1uz1vbkFRppcY2gmfEH
 nfMNJNR+IkHXzabBtWcoqi8rkSZFX7Nes46cOwcDZTCvg/k/JCoxR35Q4WN6z5LbnP8a
 o60w==
X-Gm-Message-State: APjAAAXSlbBkr6wQqRSvhVIvaMI8Qg8x7zi2ek3lNGO9lCAFMeDxOkmH
 elcY+K8p4Qi6ySpneqLBmvg=
X-Google-Smtp-Source: APXvYqyKB74FAyB/+SJCoryM883h5LTWtyijzg+2Mk4n5Qh+uy4iWs79Zblpjyc+J6oIVQxrgDw6DQ==
X-Received: by 2002:a2e:2283:: with SMTP id
 i125mr20593893lji.244.1577180700841; 
 Tue, 24 Dec 2019 01:45:00 -0800 (PST)
Received: from [172.16.20.20] ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id n30sm11591851lfi.54.2019.12.24.01.44.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Dec 2019 01:45:00 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <3c42d6de-670d-fee8-aa81-99f44d447e87@broadcom.com>
Date: Tue, 24 Dec 2019 13:44:55 +0400
Message-Id: <F311713B-D7DC-4029-90F2-5E162648349D@gmail.com>
References: <20191211235253.2539-1-smoch@web.de>
 <D1B53CE9-E87C-4514-A2D7-0FE70A4D1A5D@gmail.com>
 <cb3ac55f-4c8f-b0a0-41ee-f16b3232c87e@web.de>
 <47DB71CE-ACC4-431D-9E66-D28A8C18C0A4@gmail.com>
 <3c42d6de-670d-fee8-aa81-99f44d447e87@broadcom.com>
To: Arend Van Spriel <arend.vanspriel@broadcom.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_014504_038154_0B75DA90 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
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
Cc: brcm80211-dev-list.pdl@broadcom.com, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 linux-arm-kernel@lists.infradead.org, brcm80211-dev-list@cypress.com,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIDI0IERlYyAyMDE5LCBhdCAxOjAxIHBtLCBBcmVuZCBWYW4gU3ByaWVsIDxhcmVuZC52
YW5zcHJpZWxAYnJvYWRjb20uY29tPiB3cm90ZToKPiAKPiBDYW4geW91IGVsYWJvcmF0ZSBvbiB0
aGUgImtub3duIFNESU8gaXNzdWUiPyBJcyBpdCBhbiBpc3N1ZSB3aXRoIEFETUEgb3Igc29tZXRo
aW5nIGVsc2UuIEkgYW0gYXNraW5nIGJlY2F1c2UgdGhlcmUgaXMgYSB3b3JrYXJvdW5kIGluIGJy
Y21mbWFjIHRvIGF2b2lkIHNjYXR0ZXItZ2F0aGVyIGxpc3RzLCB3aGljaCBtYXkgb3IgbWF5IG5v
dCBhZGRyZXNzIHRoZSBpc3N1ZS4KClRoaXMgZGVzY3JpYmVzIHRoZSBpc3N1ZTogaHR0cHM6Ly9w
YXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMDk2Mjk3NS8KCkJlbG93IGlzIHRoZSBjdXJyZW50
IHdvcmthcm91bmQgSeKAmW0gdXNpbmcsIHdoaWNoIHJlc3RyaWN0cyB0aGUgaGFjayB0byBBbWxv
Z2ljIEcxMkEgYW5kIEcxMkIgZGV2aWNlcyB0aGF0IGluaGVyaXQg4oCcYW1sb2dpYyxkcmFtLWFj
Y2Vzcy1xdWlya+KAnSBmcm9tIGEgY29tbW9uIFNvQyBkdHNpLgoKaHR0cHM6Ly9naXRodWIuY29t
L2NoZXdpdHQvbGludXgvY29tbWl0LzE4NzUyNzc0Nzg2MWIwNDdjODM1ZjQ5NGZlMzI2N2Q5YjQ5
NTliZTEKClRlc3RpbmcgYnkgS2hhZGFzIHN0YWZmIGZvdW5kIHRoZSBtYXhfc2Vncy9tYXhfYmxr
X2NvdW50IHZhbHVlcyBhbmQgc2hvd3MgYSBwZXJmb3JtYW5jZSBpbXBhY3QgKG5vdCBhIGJpZyBz
dXJwcmlzZSkgYnV0IHRoZXkgYXBwZWFyIHRvIGdpdmUgYSBzdGFibGUgY29ubmVjdGlvbiwgd2hp
Y2ggaXMgYmV0dGVyIHRoYW4gYSB2ZXJ5IHVuc3RhYmxlIG9uZS4gSeKAmXZlIGZsYWdnZWQgdGhp
bmdzIHRvIGxpbnV4LWFtbG9naWMgbWFpbnRhaW5lciBOZWlsIEFybXN0cm9uZyAob24gQ0MpIGFu
ZCBJIGV4cGVjdCBoZSBvciBjb2xsZWFndWVzIHdpbGwgdGFrZSBhIG1vcmUgc2NpZW50aWZpYyBs
b29rIGluIEphbnVhcnkuCgpOQjogSeKAmW0gaGFwcHkgdG8gdGVzdCBvdGhlciB0aGluZ3MuIEp1
c3QgcmVtZW1iZXIgdGhhdCBJIGRvbuKAmXQgY29kZSBzbyB5b3UgbmVlZCB0byBzcG9vbi1mZWVk
IG1lIHdpdGggcGF0Y2hlcyBub3Qgc3VnZ2VzdGlvbnMuCgpDaHJpc3RpYW4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
