Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBF012A7E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 13:53:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WlmdL9HPySYL2UHQKP9wU0sEo+ZqfEaLqI7wmkpUvhg=; b=byptF3yk3nWJq4
	zvR31FGp+BF66hpS5aXMbgqN6kOEAxY1pYC5mnU1hadwRGO4OQQGP3CI9fxzqmI1P9xQC6LMVDY2P
	0IQiR/Czf6B+cWFIDGlJDh2Uo6UIS88LqcyM4ln6uifGirCzESNmEEWQDtfbR8kgZwCKkQS8c+QXY
	XS74pRoLNZLqWY4vCIx4SXCg9IDdcR/YesQAf6VvpfBmmP/DXCtB3pNr2tGCQJ43kChgW2lpjNX5j
	16gk0cUehMnxl15eAuM+gTNRyYtCnhj14euUeZpFH4sE5mwBQr7yfWNq51OtK4o772eWts9wNqzIY
	GhyIgF4Q2uFh/97fsLeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik6AW-0002Za-SS; Wed, 25 Dec 2019 12:53:40 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik6AO-0002Z3-7y
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 12:53:33 +0000
Received: by mail-il1-x143.google.com with SMTP id v69so18419934ili.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Dec 2019 04:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TXGQF3/KDO1zgaXAR6TAzsWRArHyWP6++8bZMWIayrY=;
 b=BmqPNLeBLPHY490CWbJVfy7w98jLr80ZA1inXydv/f6pvjGbYN8UHYyJai7BvKAJHc
 gbP0b+M8cwrXQG3O75ar53NKEJ+cq1lj674bZNvqgX9OsywaZcQvjgTVOOy/8Kf+wjPX
 TtGQ0VcAC0y7RjPyHQdgsmZBBr9m7xVmIA4zHG2wFNaq99tKMa2/oXVmtX1k0Az/jMSd
 1TA9nyzT6f6XDM0nA0gfQe21TwTRLux99m1fS8/gCfDIq8MINYbxTc145dDQ6DcyCn1+
 q0CqVIIXYTEi8ITug1CbZgH09+DefyR/C6+EUP16ZPX/Ai+ki0CZ9dJLFcpp0yJl28LR
 OcrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TXGQF3/KDO1zgaXAR6TAzsWRArHyWP6++8bZMWIayrY=;
 b=YVBGmNqQeTjtmEg55h7mENcuRoDFN/3DB3EDqdFE7jrWEjsItg0VVcJp/qiuf5uZfX
 JF2eSH/50WfB0+T6fBS7zIIEobMQI8NGAqDNS0m8jT71m7iD42ZXQqJmIYakp2DlNwje
 cLLJKVnMWfMOV8tHWy112PyJVxawjaeKTtjRmiXZc9060+wHymH2X8/UQYxwfeYjt6SB
 jZEgmj4Vjewg2YBA1RtO59A6AEaJzA5TAtIAGywWpPVW6nrV2Ex0T1gkUUs2kCh21bDv
 YC84nT4gutvLFVzOQxwO2p1EsoJHA7mkZQ4Lf+QIgI9g6SJP6+FedbfeTFpJc5dYT9HH
 qkWA==
X-Gm-Message-State: APjAAAWXCuxszGG5lw6y0QbR4dx2IGHMt8HnhOnPp+wGzWfWOvHLuvs3
 dLRI+GlzR9/RukoRFx57H1747mmWP5DHNToL8J0=
X-Google-Smtp-Source: APXvYqzIsyUJ2aDYpIXzN+pXO88Ij5mwzND8TTEzGDtSlQIqFJaNwUMUAkRw7L/q8P/srJYI4iEXI7zfLArkcZA4N5I=
X-Received: by 2002:a92:4e:: with SMTP id 75mr34032444ila.276.1577278409744;
 Wed, 25 Dec 2019 04:53:29 -0800 (PST)
MIME-Version: 1.0
References: <20191224161005.28083-1-nerv@dawncrow.de>
 <20191224184503.GK35479@atomide.com>
 <a8f64408-f581-e57d-0f5d-db42ff0a4288@dawncrow.de>
In-Reply-To: <a8f64408-f581-e57d-0f5d-db42ff0a4288@dawncrow.de>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 25 Dec 2019 06:53:18 -0600
Message-ID: <CAHCN7xKMnfo5reY+VSs_iCv_NXs-E12dFcRXonz6cNe1-huSPQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: Add omap3-echo
To: =?UTF-8?Q?Andr=C3=A9_Hentschel?= <nerv@dawncrow.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_045332_285618_8CBC01A1 
X-CRM114-Status: GOOD (  22.09  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Russell King <linux@arm.linux.org.uk>,
 Tony Lindgren <tony@atomide.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBEZWMgMjUsIDIwMTkgYXQgNjowNSBBTSBBbmRyw6kgSGVudHNjaGVsIDxuZXJ2QGRh
d25jcm93LmRlPiB3cm90ZToKPgo+IEFtIDI0LjEyLjE5IHVtIDE5OjQ1IHNjaHJpZWIgVG9ueSBM
aW5kZ3JlbjoKPiA+ICogQW5kcsOpIEhlbnRzY2hlbCA8bmVydkBkYXduY3Jvdy5kZT4gWzE5MTIy
NCAxNjoxMV06Cj4gPj4gVGhpcyBpcyB0aGUgZmlyc3QgZ2VuZXJhdGlvbiBBbWF6b24gRWNobyBm
cm9tIDIwMTYuCj4gPj4gQXVkaW8gc3VwcG9ydCBpcyBub3QgeWV0IGltcGxlbWVudGVkLgo+ID4K
PiA+IE9LIGxvb2tzIGdvb2QgdG8gbWUsIGp1c3Qgd29ycmllZCBhYm91dCBvbmUgcGFydDoKPiA+
Cj4gPj4gKyZzZ3hfbW9kdWxlIHsKPiA+PiArICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPj4g
K307Cj4gPgo+ID4gV2Ugc2hvdWxkIGhhdmUgYSBzZXBhcmF0ZSBhbTM3MDMuZHRzaSBvciB3aGF0
ZXZlciB0aGUgU29DIG1vZGVsCj4gPiBkaXNhYmxpbmcgc2d4IGlmIG5vdCB0aGVyZSBvbiB0aGUg
U29DLiBUaGF0IHdheSBib2FyZCBzcGVjaWZpYwo+ID4gZHRzIGZpbGVzIGNhbiBqdXN0IGluY2x1
ZGUgaXQgd2l0aG91dCBoYXZpbmcgdG8gZGVidWcgdGhpcyBpc3N1ZQo+ID4gb3ZlciBhbmQgb3Zl
ci4KPgo+IFRoYW5rcyBmb3IgdGhlIHF1aWNrIHJldmlldyBpbiB0aGF0IHRpbWUgb2YgdGhlIHll
YXIhCj4gVGhlIHNneCBpc3N1ZSBjYW1lIHVwIGluIG5ld2VyIGtlcm5lbHMgYW5kIEkgaGFkIHRv
IGJpc2VjdCBpdCB0byAzYjcyZmM4OTVhMmU1N2Y3MDI3NmI0NmYzODZmMzVkNzUyYWRmNTU1Cj4g
VGhlIGRldmljZSBqdXN0IHdhc24ndCBib290aW5nIHdpdGhvdXQgYSBtZXNzYWdlLCBzbyB5ZXMs
IHdlIHNob3VsZCBtYWtlIGl0IGVhc2llciBmb3Igb3RoZXJzIHRvIGZpZ3VyZSBpdCBvdXQuCj4g
U29DIGlzIERNMzcyNSBhbmQgb25seSBETTM3MzAgaGFzIHNneCBzdXBwb3J0LiBBbmQgaXQncyBo
YXJkIHRvIHNheSBpZiB0aGUgYmFzZSBpcyBhbTM3eHggb3Igb21hcDM2eHguCj4gQnV0IEkgc2Vl
IHRoZSByZWFzb25zIHlvdSBwaWNrZWQgYW0zNzAzLCBzbyBJIHdvdWxkIG1vdmUgZXZlcnl0aGlu
ZyBmcm9tIG9tYXAzNnh4LmR0c2kgdG8gYW0zNzAzLmR0c2kgZXhjZXB0IHNneD8KCj4gQW5kIHRo
ZW4gaW5jbHVkZSBhbTM3MDMuZHRzaSBpbiBvbWFwMzZ4eC5kdHNpIGJlZm9yZSBzZ3ggc3VwcG9y
dD8KCkkgY2FuIHNlZSB2YWx1ZSBpbiBoYXZpbmcgYSAzNzAzIGJhc2UgYW5kIGluY2x1ZGluZyB0
aGF0IGluIHRoZSAzNnh4CndpdGggU0dYIGFuZCBEU1Agbm9kZXMsIGJ1dCB3aHkgbm90IGp1cyBt
YWtlIFNHWCBkaXNhYmxlZCBieSBkZWZhdWx0LgpUaG9zZSB3aG8gd2FudC9uZWVkIGl0IGNhbiBl
bmFibGUgaXQgb24gYSBwZXItYm9hcmQgYmFzaXMuCj4gT3Igd291bGQgaXQgYmUgYmV0dGVyIHRv
IGhhdmUgc2d4IHN1cHBvcnQgaW4gYSBzZXBhcmF0ZSBkdHNpPwoKSSBhbSBub3Qgc3VyZSBob3cg
bXVjaCBEU1Agc3R1ZmYgaXMgaW4gdGhlcmUsIGJ1dCB0aGUgRE0zNzMwIGlzIHRoZQpBTTM3MDMg
KyBEU1AgYW5kIDNELgoKYWRhbQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
