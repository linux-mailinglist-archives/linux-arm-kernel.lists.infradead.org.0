Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29734149AA9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 14:01:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1VxYS3IBqHkn+cN7kF42lFEP/4FfMEyc4LSw7WEnUMU=; b=YjhatGHZFulJNZ
	VpLI/Sq8FBxgs3j9e9Czukf0xcAKxYghc1igJqdYxxaBb7xteVtdSinvUEQy3EW3ljyvIinTbEPKS
	arEas1YvxOEcJTpZbNoQ8CVAKKBCxaw8nUOcuxj4bB/QrN9B3JzMBoF/6SgnAcs55apM0cKXEzO23
	QW5aYBl/mRLs+r73I0477TzW5ZdTkzJOwPjS0rROmYSGHBiAaBLI6UeaXr2ISUlQgBXOlf9o0swyv
	9T3NrIbk9BqKq8LbEcglcsZIJ/hjKcFXlX6t11+Sdt3zfvYSf6vFeiUR8UPtqLknh9uY+ZJ8nRoU3
	/Br3coJLOV43D5mkmUMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivhXX-0007H8-99; Sun, 26 Jan 2020 13:01:23 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivhXP-0007GE-Q6
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Jan 2020 13:01:17 +0000
Received: by mail-io1-xd41.google.com with SMTP id d15so7004031iog.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Jan 2020 05:01:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Fe5qGJHJCsCWl/2D934wNBGowgZdtUVYwms1aiiozFs=;
 b=ZH5ARQbuwphpaNvpY1SuKWAtvlC8o3UbaoAE44Le2OJ81OSV/Qq26Di8bqzNIwBBxE
 Git7+VXnwWAkscpL67zZoKZPaasamLylqFNoDq3FDqNLnA5q/Towoczso2enBoycHCrX
 QmOiKUpFOT6dIugN0CH+rfAbO9OCQRUcXLBo7w2nhcSLJEXCtTHIWVfIE4sKGRZPhw7w
 VrkezRzvs2aErk7YilVcRp0mIF94Yws/arNip8htJPJfsdvpe0HoJ1serYvk71brxhIA
 oWoys2RxWf0LSLUW4kZyqZutzLk5c5rQOfnxBcqyD9eD/DawnnJAD9q3kLPmQdRHo92Q
 EaaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Fe5qGJHJCsCWl/2D934wNBGowgZdtUVYwms1aiiozFs=;
 b=ZjChbfcbsdUOOfwaFjnz69EGKtR+km/kAvWt1faRyv+gh7O4qs9fdM6RqKQubBcgzn
 0Ny0r+d3hEEZhRPZuoCh7pdu6bXf7mu0yUT2EQRQZS7H2LD+wR/h14qcJO7dJabGrl/F
 AQnSJfOc0A3+dHDyO4NBfblLq4HdZW13F/gVL/GQV5SHHfmDhY7rZS1+HDgywBrYnopF
 5xEBFHJP6QcvHOAdy7Yu+UaORU7h3CwG6uf8UOp7evsJwQ4UP4OozmFaKIKyH38eGvC/
 pbSrWc15fOuZ2ZT88hePVuo5r1SPul86WFTkPpdmDrWJ3OyC3CRapMZOqJiWqIqafEbn
 ruuQ==
X-Gm-Message-State: APjAAAWu9dIXsVuFedlyj/jVDHZvUjEEQsyyF5ZbCPsw++n8RZOwUkyv
 hlEj2LPN6gvd07enoaDbZcy9mnC2/WQ8MaW0G7E=
X-Google-Smtp-Source: APXvYqyV82IjtOYASKBL3wF70Jmh/kknf2/qksjOk8uUTMPBEV9amI0E9t9oY9cHqJaM3MXS2O302LhyM7Mfn/lXjFc=
X-Received: by 2002:a05:6638:538:: with SMTP id
 j24mr9294229jar.12.1580043672461; 
 Sun, 26 Jan 2020 05:01:12 -0800 (PST)
MIME-Version: 1.0
References: <20200106174639.20862-1-tiny.windzz@gmail.com>
 <20200106174639.20862-2-tiny.windzz@gmail.com>
 <20200107075816.ly6exfd4qtvfxxua@gilmour.lan>
 <662e157a-603f-7423-0491-f26f0fc8d7b6@linaro.org>
 <20200109131343.mjyuj5ed2xwvmwd4@gilmour.lan>
 <af4bca3b-ba95-aa10-5601-753f1c5275b3@linaro.org>
In-Reply-To: <af4bca3b-ba95-aa10-5601-753f1c5275b3@linaro.org>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Sun, 26 Jan 2020 21:01:01 +0800
Message-ID: <CAEExFWtmUtzBje-DKt71W46rs3PTF_Di_x3YQCz+tg8+W1kyAA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: sun8i-r40: Add thermal sensor and
 thermal zones
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_050115_874311_27CC05F3 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tiny.windzz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 devicetree <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SEkgQ2hlbi1ZdSBhbmQgTWF4aW1lLAoKQ2FuIHlvdSBwaWNrIHRoaXMgdXAgYWdhaW4/CgpZYW5n
dGFvCgpPbiBGcmksIEphbiAxMCwgMjAyMCBhdCA0OjA4IEFNIERhbmllbCBMZXpjYW5vCjxkYW5p
ZWwubGV6Y2Fub0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIDA5LzAxLzIwMjAgMTQ6MTMsIE1h
eGltZSBSaXBhcmQgd3JvdGU6Cj4gPiBIaSBEYW5pZWwsCj4gPgo+ID4gT24gVGh1LCBKYW4gMDks
IDIwMjAgYXQgMTI6NTE6MjdQTSArMDEwMCwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4gPj4gT24g
MDcvMDEvMjAyMCAwODo1OCwgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiA+Pj4gT24gTW9uLCBKYW4g
MDYsIDIwMjAgYXQgMDU6NDY6MzlQTSArMDAwMCwgWWFuZ3RhbyBMaSB3cm90ZToKPiA+Pj4+IFRo
ZXJlIGFyZSB0d28gc2Vuc29ycywgc2Vuc29yMCBmb3IgQ1BVLCBzZW5zb3IxIGZvciBHUFUuCj4g
Pj4+Pgo+ID4+Pj4gU2lnbmVkLW9mZi1ieTogWWFuZ3RhbyBMaSA8dGlueS53aW5kenpAZ21haWwu
Y29tPgo+ID4+Pj4gVGVzdGVkLWJ5OiBDb3JlbnRpbiBMYWJiZSA8Y2xhYmJlLm1vbnRqb2llQGdt
YWlsLmNvbT4KPiA+Pj4+IFRlc3RlZC1vbjogc3VuOGktcjQwLWJhbmFuYXBpLW0yLXVsdHJhCj4g
Pj4+Cj4gPj4+IEFzIGZhciBhcyBJIGtub3csIHRlc3RlZC1vbiBpcyBub3QgZG9jdW1lbnRlZCBh
bnl3aGVyZSAoYW5kIGlzbid0Cj4gPj4+IHJlYWxseSB1c2VkIGVpdGhlcikuIEkndmUgcmVtb3Zl
ZCBpdCBhbmQgYXBwbGllZCwgdGhhbmtzIQo+ID4+Cj4gPj4gSSB0aGluayB0aGlzIHBhdGNoIHNo
b3VsZCBnbyB0aHJvdWdoIG15IHRyZWUgYXMgaXQgcmVmZXJzIHRvIGEgY29tbWl0IGluCj4gPj4g
bXkgYnJhbmNoLgo+ID4KPiA+IEknbSBub3QgcXVpdGUgc3VyZSB0byBnZXQgd2h5LiBFdmVuIHRo
b3VnaCB0aGF0IHBhdGNoIGRlcGVuZHMgb24gdGhlCj4gPiBvbmUgYWZmZWN0aW5nIHRoZSBkcml2
ZXIgdG8gYmUgZnVuY3Rpb25hbCwgaXQgZG9lc24ndCBicmVhayBhbnl0aGluZwo+ID4gd2hlbiBt
ZXJnZWQgdGhyb3VnaCBhcm0tc29jLCBhbmQgc2ltaWxhcmx5IHlvdXJzIGRvZXNuJ3QgYWZmZWN0
IGFueQo+ID4gb3RoZXIgdHJlZSBpZiBpdCdzIG1lcmdlZCB0aHJvdWdoIHlvdXIgdHJlZSwgc28g
dGhlcmUncyBubyBkZXBlbmRlbmN5Pwo+Cj4gU29ycnksIEkgcHV6emxlZCBteXNlbGYsIEkgdGhv
dWdodCB5b3UgbWVhbnQgeW91IGFwcGxpZWQgcGF0Y2ggMS8yCj4KPgo+IC0tCj4gIDxodHRwOi8v
d3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QVJNIFNvQ3MKPgo+IEZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFn
ZXMvTGluYXJvPiBGYWNlYm9vayB8Cj4gPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+
IFR3aXR0ZXIgfAo+IDxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCj4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
