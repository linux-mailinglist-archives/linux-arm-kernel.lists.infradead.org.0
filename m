Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FA21E43EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=42vQixw8hMgFBUXQ5tVP4ARAmbl/1zz5YJCqX93TYZg=; b=rx6/a7iAdeWjYA
	vxivtj+c7WLdGVLU3vbNDTljohX5ohtDS6dbAxoKprr0ZHVSf1X+iSKtAJK0cISCFWimJay1zhltQ
	03CsClEUTrUuHqttZOfDGoxIKGAhNIKlfwFYdJo4+GnwUUJBIw2KibTWgjnYIboEuTC53Na+iCkID
	6G0T49ighS3rjvXePc/8+pu+oqQV3YLZM5mQ5Hfkm80RVG4SHA8hmGyA1fEGBbIvOPoFl4nocvATJ
	0i/zmT3/au8cMiNdM6mjAWABqnfbrdlfivqY3d1X5rJsQI4GNumxidw4AfSACfRxhmqyAwl3U2uMV
	L/GQ2jA+r3DN/WW3Rgnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdwG1-0001TW-DT; Wed, 27 May 2020 13:38:09 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdwFl-0001QV-JJ
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 13:37:56 +0000
Received: by mail-qt1-x842.google.com with SMTP id c12so9251472qtq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 06:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=K5fHO02+PN/2Q6ZCPK4dYN19pxbY+Th3EZc6EUW67vk=;
 b=D9iYOTuJuftIfysOzhwmQ0vn4d/vsEei6RY106AsYqM+lY2JkboSBXkTeZABIrmuxA
 767ViAm38EWF6tO26zBKiyf6W+hmOrYxdHQBw4nEUtjSeqYWHHXf/kXKzamdnyqE+B0/
 NcN6NfN9X+hx601WT5qZpx844inwztmEtCS5m3mE2eThHgNWjuM7Cjlr61cosLwzjU84
 bfVc91qe0YOmWi/Oeb+6nLrWWrGErBHH26EzrhxqM7p0pCb8MaMuVOxX7aEgBjhO4l/p
 rQrt4YogqHaPQJSlS86Uiw3CtXzfIQnRG8unL3g8T/mG4LMJUi/6R7d2NEiR8Kn45trT
 YiJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=K5fHO02+PN/2Q6ZCPK4dYN19pxbY+Th3EZc6EUW67vk=;
 b=oQGMBEvR88lz5gitR+zZW7QZaIk9WzKeXglyNyOvv79aFMovt0KiBJVmfXDxRcRp+1
 qQfZkoLVxuNDwsRI5Y2jELuN0SGykeLhgqR+2OSuno/2dwM8wu3UOSIiwIeFWmV5F+Nx
 +QMEjDsXagVWa3lOGdzx+gqzOtH7+bdx/J+mtPBk3k3Ba/oGyE8QtOIO6Q+9lRDBHq/Z
 mWtODiXHnLpOB0yH+Sb+j7dzGR6T+GZLENTfHTY36dGUpVOPSxhhG41phx6BiETHLlf7
 1MV+igPZ/PNTstkuhm9YwY+5QNz2FAjGBQm7KEqn953UYu0q6Djnblk7QEW+1ycnZO27
 udjA==
X-Gm-Message-State: AOAM531orjQ8odxq6CbshA+KygBhjaHVuRkCzZDV2+fF3JH4oI6V/pwL
 SBXryk1smuBbL08989rTUxcCAxZmu6iHgucTCWz4JA==
X-Google-Smtp-Source: ABdhPJyF4EYb3EdIRy+uh7qF8OG1s7b7hlCQ5K73FZQQ2Hmzwq6yKclZidEBmqETHn2raBDlYd3qdYAOxeSVU4PKrjE=
X-Received: by 2002:ac8:2242:: with SMTP id p2mr4052242qtp.27.1590586671749;
 Wed, 27 May 2020 06:37:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200527133513.579367-1-arnd@arndb.de>
In-Reply-To: <20200527133513.579367-1-arnd@arndb.de>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 27 May 2020 15:37:41 +0200
Message-ID: <CAMpxmJU63A2O_JE6G42FwVBN8hj6YQjKuQDFhmJLOMkDqtX=tA@mail.gmail.com>
Subject: Re: [PATCH] [net-next] mtk-star-emac: mark PM functions as
 __maybe_unused
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_063753_645473_1C7AFA79 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Felix Fietkau <nbd@openwrt.org>, netdev <netdev@vger.kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, LKML <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xZtyLiwgMjcgbWFqIDIwMjAgbyAxNTozNSBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPiBu
YXBpc2HFgihhKToKPgo+IFdpdGhvdXQgQ09ORklHX1BNLCB0aGUgY29tcGlsZXIgd2FybnMgYWJv
dXQgdHdvIHVudXNlZCBmdW5jdGlvbnM6Cj4KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRl
ay9tdGtfc3Rhcl9lbWFjLmM6MTQ3MjoxMjogZXJyb3I6IHVudXNlZCBmdW5jdGlvbiAnbXRrX3N0
YXJfc3VzcGVuZCcgWy1XZXJyb3IsLVd1bnVzZWQtZnVuY3Rpb25dCj4gZHJpdmVycy9uZXQvZXRo
ZXJuZXQvbWVkaWF0ZWsvbXRrX3N0YXJfZW1hYy5jOjE0ODg6MTI6IGVycm9yOiB1bnVzZWQgZnVu
Y3Rpb24gJ210a19zdGFyX3Jlc3VtZScgWy1XZXJyb3IsLVd1bnVzZWQtZnVuY3Rpb25dCj4KPiBN
YXJrIHRoZXNlIGFzIF9fbWF5YmVfdW51c2VkLgo+Cj4gRml4ZXM6IDhjN2JkNWE0NTRmZiAoIm5l
dDogZXRoZXJuZXQ6IG10ay1zdGFyLWVtYWM6IG5ldyBkcml2ZXIiKQo+IFNpZ25lZC1vZmYtYnk6
IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Cj4gLS0tCj4gIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L21lZGlhdGVrL210a19zdGFyX2VtYWMuYyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L21lZGlhdGVrL210a19zdGFyX2VtYWMuYyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L21lZGlhdGVrL210a19zdGFyX2VtYWMuYwo+IGluZGV4IGIxOGNlNDdjNGYyZS4uMzIyMzU2
N2ZlMWNiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19z
dGFyX2VtYWMuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19zdGFy
X2VtYWMuYwo+IEBAIC0xNDY5LDcgKzE0NjksNyBAQCBzdGF0aWMgaW50IG10a19zdGFyX21kaW9f
aW5pdChzdHJ1Y3QgbmV0X2RldmljZSAqbmRldikKPiAgICAgICAgIHJldHVybiByZXQ7Cj4gIH0K
Pgo+IC1zdGF0aWMgaW50IG10a19zdGFyX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ICtz
dGF0aWMgX19tYXliZV91bnVzZWQgaW50IG10a19zdGFyX3N1c3BlbmQoc3RydWN0IGRldmljZSAq
ZGV2KQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgbXRrX3N0YXJfcHJpdiAqcHJpdjsKPiAgICAgICAg
IHN0cnVjdCBuZXRfZGV2aWNlICpuZGV2Owo+IEBAIC0xNDg1LDcgKzE0ODUsNyBAQCBzdGF0aWMg
aW50IG10a19zdGFyX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ICAgICAgICAgcmV0dXJu
IDA7Cj4gIH0KPgo+IC1zdGF0aWMgaW50IG10a19zdGFyX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpk
ZXYpCj4gK3N0YXRpYyBfX21heWJlX3VudXNlZCBpbnQgbXRrX3N0YXJfcmVzdW1lKHN0cnVjdCBk
ZXZpY2UgKmRldikKPiAgewo+ICAgICAgICAgc3RydWN0IG10a19zdGFyX3ByaXYgKnByaXY7Cj4g
ICAgICAgICBzdHJ1Y3QgbmV0X2RldmljZSAqbmRldjsKPiAtLQo+IDIuMjYuMgo+CgpBY2tlZC1i
eTogQmFydG9zeiBHb2xhc3pld3NraSA8YmdvbGFzemV3c2tpQGJheWxpYnJlLmNvbT4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
