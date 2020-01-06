Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 650D51316FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 18:45:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDXEg0+mut3JcRqqNRc+XaejgHKTs9neyYcetiWtSDY=; b=CRgo7aU9zngZFP
	1Sdr7X5UFBlk23htRQLpaaEnnR3+seOLNjJEDE/MBvjy4My6uIZC1/BLfWRg7OjRJfBQG91A8UdtQ
	wUznhFVAx3iK6VnGdpDW4gQVyql/lBwTrm2IiskJzqm9z4bWvKpRCSWP+oduHrz9NEeQr8rnWiAOV
	CkFswA0gNtSNih73PsLGanHgUCg1mY65pt28sfsbGPq3Do7MUNxPmmNAp33IsSSd4xWTS3PvTiPdJ
	mOd2oqbb8D0m7NLz02mrGv9W492tOTWQPwnvnVNJ5EOGF4ip1TuxQy/FMwgR+HInbUHJrnMuozVo4
	1JxVrd9e/gD9dvcKWyqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioWRV-0004jl-2Y; Mon, 06 Jan 2020 17:45:29 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWRO-0004jG-0c
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 17:45:23 +0000
Received: by mail-io1-xd42.google.com with SMTP id z8so49460236ioh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 09:45:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iXctLlmYdrdKmfjjRbd044M1gc5IPMj+HwF01t2aLxE=;
 b=lKMWg3HLOmvwWxJ0QtPLD+d5uVW21/HD+VV4LSzKxccmAVHU752JGwACLfCOx4foBp
 GFOqdq9A+iruNNxsN2JqU2Eb1oTMSzmj0WFCtWM+lEOnByEwBEKHUK9UuzeYh8ppDgB1
 2Eqw9dntUU+zlnSMUDRGFDFrc044zk4qIXmoPVQpgfWUs82Ebmrzslu7vl10SIte5Hq0
 UrDk+034ryO0R86w1j1MoG33EKI7rsNLmJepg+tmeb2EVey2rUkNYU2bnEFtILqAoKmI
 mN31+OxzTYyvUzE4Y9ZgmRC8dY03A9szlx8By3srCtGGNwXRyGLcYl15FUWZ2RSDd9n9
 VhCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iXctLlmYdrdKmfjjRbd044M1gc5IPMj+HwF01t2aLxE=;
 b=OGH9IKLbNj3x7LejcKt+0mxsBrwfqEceSR9LZbhFJYq62+t0uOfaCluV4/bd40QTwB
 gMs6WtM0RuSqFHceQ+q2nwJqwFljdtdYLVw/BDbZ3whwGJQjEzSJTRi1QnWApAw+uxqN
 3iJRcpFT69OcAtLwTpAyH/g9Rb2QgKaMAQu+U0Kd4qg23uSGbVknlrlSMlIn2Z0o3ULI
 ZbFwqNu8rMOPvva4MLFQL2RUFD24RetKNt/2fHrqULelshkRLJcQYGSGFE25ttGk9QCJ
 jIsxX9SNhZbW7vcGm8ldINEKHvrqcRNQTphzXIal3e/KT+M/ltaGs5+fyxbwbcmcVYO3
 8I/A==
X-Gm-Message-State: APjAAAV8avH+P+lNIYQQ4u2YtnhP4HhMuYqnCtiLkDgU7mwcbAPKtWf2
 qrN9+sSKq1e950LsQhQ2SJ0NhM/yKsKZHcN/B2w=
X-Google-Smtp-Source: APXvYqxBbtoShLII8AtDZh3j+6a1iS1Iq+kxojCr5tNwKmFK+J2CfVlfliqXAlghSpaB31l+fm+LyLpoIZV/nJ2y0l8=
X-Received: by 2002:a6b:b941:: with SMTP id j62mr72571643iof.168.1578332721008; 
 Mon, 06 Jan 2020 09:45:21 -0800 (PST)
MIME-Version: 1.0
References: <20200106172254.20271-1-tiny.windzz@gmail.com>
 <CA+E=qVciDPXrHCGsHR7mjFuaGrv_K21ZAdWW28_fnSV3CvEDCg@mail.gmail.com>
In-Reply-To: <CA+E=qVciDPXrHCGsHR7mjFuaGrv_K21ZAdWW28_fnSV3CvEDCg@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Tue, 7 Jan 2020 01:45:09 +0800
Message-ID: <CAEExFWtD_wOJ9sSvXd3uGD5ZXAOPX3kenoRdv-fKpqjZXp22Dw@mail.gmail.com>
Subject: Re: [PATCH 1/2] thermal: sun8i: fix r40 ths number
To: Vasily Khoruzhick <anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_094522_081155_F6FD5467 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 devicetree <devicetree@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKYW4gNywgMjAyMCBhdCAxOjI5IEFNIFZhc2lseSBLaG9ydXpoaWNrIDxhbmFyc291
bEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCBKYW4gNiwgMjAyMCBhdCA5OjIzIEFNIFlh
bmd0YW8gTGkgPHRpbnkud2luZHp6QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gQWNjb3JkaW5n
IHRvIHRoZSBzcGVjLCByNDAgaGFzIDIgdGhlcm1hbCBzZW5zb3JzLgo+ID4gU2Vuc29yMCBsb2Nh
dGVkIGluIHRoZSBDUFUsIGFub3RoZXIgaW4gdGhlIEdQVS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5
OiBZYW5ndGFvIExpIDx0aW55LndpbmR6ekBnbWFpbC5jb20+Cj4KPiBZb3Ugc2hvdWxkIGFsc28g
YWRkICJGaXhlcyIgdGFnIGhlcmUuCgpTaW5jZSB0aGUgZHJpdmVyIGhhcyBub3QgeWV0IGVudGVy
ZWQgdGhlIG1lcmdlIHdpbmRvdy4uLi4uLgpUaGFua3MgZm9yIHJlbWluZGluZ++8jCDvvJpECgpZ
YW5ndGFvCgo+Cj4gPiBUZXN0ZWQtYnk6IENvcmVudGluIExhYmJlIDxjbGFiYmUubW9udGpvaWVA
Z21haWwuY29tPgo+ID4gVGVzdGVkLW9uOiBzdW44aS1yNDAtYmFuYW5hcGktbTItdWx0cmEKPiA+
IC0tLQo+ID4gIGRyaXZlcnMvdGhlcm1hbC9zdW44aV90aGVybWFsLmMgfCAyICstCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9zdW44aV90aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwv
c3VuOGlfdGhlcm1hbC5jCj4gPiBpbmRleCAyM2E1ZjRhYTRiZTQuLmM1NjYxZDdjM2UyMCAxMDA2
NDQKPiA+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9zdW44aV90aGVybWFsLmMKPiA+ICsrKyBiL2Ry
aXZlcnMvdGhlcm1hbC9zdW44aV90aGVybWFsLmMKPiA+IEBAIC01NjUsNyArNTY1LDcgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCB0aHNfdGhlcm1hbF9jaGlwIHN1bjhpX2gzX3RocyA9IHsKPiA+ICB9
Owo+ID4KPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHRoc190aGVybWFsX2NoaXAgc3VuOGlfcjQw
X3RocyA9IHsKPiA+IC0gICAgICAgLnNlbnNvcl9udW0gPSAzLAo+ID4gKyAgICAgICAuc2Vuc29y
X251bSA9IDIsCj4gPiAgICAgICAgIC5vZmZzZXQgPSAyNTEwODYsCj4gPiAgICAgICAgIC5zY2Fs
ZSA9IDExMzAsCj4gPiAgICAgICAgIC5oYXNfbW9kX2NsayA9IHRydWUsCj4gPiAtLQo+ID4gMi4x
Ny4xCj4gPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
