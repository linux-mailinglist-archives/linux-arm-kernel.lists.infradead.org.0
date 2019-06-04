Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C61C234D03
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MvdFasrXvLKAbviikyKwVgK6TrzgGPP+ya/j1+Knxik=; b=dDprBP+vWNtCsE
	ecN8AfEUqIMOPeCsSwXSbf6gmHfYTfxfjYfjkPtxGiDIaCvqOraZGViGrcfCbcrVmq4RWIItoj5kx
	p/PNhhGIRlt4bCcqRfLyB40KUPwImyUqyti/K20Xb25Sk2uLf4umsBpSqdEVyqOhHgXfMLwuRqYxC
	l2ICzAq0ZpmkT3MK3faLCYgPr8CWWRzK+/wHrU6gYyk4gU2sEQZ1DQUXrUixC/9DKfPZGRRq9fCm+
	675ZLesS+mww39Y1uE0IXrEmRfVIjoTfArkiv6rmUoLDAnoDN9V6DLeXuxgH0wRXp/EV5NDh1goRK
	aZF9NQIGw4FGl+u+horg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYC54-0007D2-NK; Tue, 04 Jun 2019 16:14:34 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYC4x-0007Ch-If
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:14:29 +0000
Received: by mail-yb1-xb42.google.com with SMTP id g62so8164287ybg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=D5MMPFwZPDwoVwg0CH5FVocMqyoaqr3N1YLjVthTqt4=;
 b=NCvPEi3qdm1deNg6XsWqtja84SJO+KiT+rTr3MlLL3XFiYwiQvc/HI/hZDcfQ3Z/Ez
 pxzrKO5PfbWQMrNhJp53c++0irTblLw1lUnIuEKx1lCty7aUKdb+Zthwv3NGIsEHYKFQ
 esNBrW/yze0vVonksP6Tt+RNh+dS8qmXPMckX03vDzPVUITBN2L+KyES+Wf6UJvpBSMZ
 DtjKtPgAKadZDNr++L7eW0sS9LrCZn74Wm81D8b3t1laW82mTPZEEU+W+xO/1S23w4cE
 tvfTJp9IFpYSrxiqVb0StJR9A0uEjUaKQE+NQ30SOA9AKZmJjwD4YaV/ydHG4xlS45Yg
 eBPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=D5MMPFwZPDwoVwg0CH5FVocMqyoaqr3N1YLjVthTqt4=;
 b=mOwW0+DISXrmdekIUwDjrMNcmbgBleIpqxxA7QPiJbvXQbm4HvVbxqrJ5/rHd4yiwx
 4mPIO6mtri8HqjJmTCeaom+zvvm8ztOU/j1wEHwN/gmXX98Wja8KqOBW1M1AdLUcBEJT
 +51a3zhq3EpHER3+pbYiCjNdSagxdn0Y0yIuzpHaz4MtChSBD/Zl7kQqP3fjAfUi1HI6
 IyFYLp58b0UIrF4lHUUzkktiZAoVoIKBDm0XAzcMlM8CLyGlAuwU/r7B4sl8854wt2ry
 9CDourfA3yQB/PZC70rFqK26o+Ygtuy8qhwmtPiY8jKC5WngHKvxbYAHyFgYT7P2h1eZ
 TXqA==
X-Gm-Message-State: APjAAAUJobglQCFo8D2yAu4OjY8uQT90BdnDuvatpDfGYO7aWImR96KM
 SS5ls/VWYl/pPedNflorpMMMR9BUe+iVdpAtIGQ=
X-Google-Smtp-Source: APXvYqy65LooPH+1bjcdVqPkjkn1bHuRgJ3PaSVfYkPX8MorTnFlcnNjWXyHFpfD6bfMSX8neQCHQL/2nWA9e1z26tU=
X-Received: by 2002:a25:6148:: with SMTP id v69mr13871252ybb.401.1559664866416; 
 Tue, 04 Jun 2019 09:14:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190604154036.23211-1-megous@megous.com>
In-Reply-To: <20190604154036.23211-1-megous@megous.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 4 Jun 2019 18:14:15 +0200
Message-ID: <CAJiuCcda0ZDDrbdOF7TpTeoUOgt7GeS6wcgy45DRCo_U2XX6bQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2] clk: sunxi-ng: sun50i-h6-r: Fix
 incorrect W1 clock gate register
To: megous@megous.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_091427_613639_ACAB8F38 
X-CRM114-Status: GOOD (  23.02  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 open list <linux-kernel@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT25kcmVqLAoKT24gVHVlLCA0IEp1biAyMDE5IGF0IDE3OjQwLCBtZWdvdXMgdmlhIGxpbnV4
LXN1bnhpCjxsaW51eC1zdW54aUBnb29nbGVncm91cHMuY29tPiB3cm90ZToKPgo+IEZyb206IE9u
ZHJlaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPgo+Cj4gVGhlIGN1cnJlbnQgY29kZSBkZWZp
bmVzIFcxIGNsb2NrIGdhdGUgdG8gYmUgYXQgMHgxY2MsIG92ZXJsYXlpbmcgaXQKPiB3aXRoIHRo
ZSBJUiBnYXRlLgo+Cj4gQ2xvY2sgZ2F0ZSBmb3Igci1hcGIxLXcxIGlzIGF0IDB4MWVjLiBUaGlz
IGZpeGVzIGlzc3VlcyB3aXRoIElSIHJlY2VpdmVyCj4gY2F1c2luZyBpbnRlcnJ1cHQgZmxvb2Rz
IG9uIEg2IChiZWNhdXNlIGludGVycnVwdCBmbGFncyBjYW4ndCBiZSBjbGVhcmVkLAo+IGR1ZSB0
byBJUiBtb2R1bGUncyBidXMgYmVpbmcgZGlzYWJsZWQpLgo+Cj4gU2lnbmVkLW9mZi1ieTogT25k
cmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+Cj4gRml4ZXM6IGI3YzdiMDUwNjVhYTc3YWUg
KCJjbGs6IHN1bnhpLW5nOiBhZGQgc3VwcG9ydCBmb3IgSDYgUFJDTSBDQ1UiKQo+IC0tLQo+ICBk
cml2ZXJzL2Nsay9zdW54aS1uZy9jY3Utc3VuNTBpLWg2LXIuYyB8IDIgKy0KPiAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9jbGsvc3VueGktbmcvY2N1LXN1bjUwaS1oNi1yLmMgYi9kcml2ZXJzL2Nsay9zdW54aS1u
Zy9jY3Utc3VuNTBpLWg2LXIuYwo+IGluZGV4IDI3NTU0ZWFmNjkyOS4uOGQwNWQ0ZjFmOGExIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xrL3N1bnhpLW5nL2NjdS1zdW41MGktaDYtci5jCj4gKysr
IGIvZHJpdmVycy9jbGsvc3VueGktbmcvY2N1LXN1bjUwaS1oNi1yLmMKPiBAQCAtMTA0LDcgKzEw
NCw3IEBAIHN0YXRpYyBTVU5YSV9DQ1VfR0FURShyX2FwYjJfaTJjX2NsaywgICAgICAgInItYXBi
Mi1pMmMiLCAgICJyLWFwYjIiLAo+ICBzdGF0aWMgU1VOWElfQ0NVX0dBVEUocl9hcGIxX2lyX2Ns
aywgICAici1hcGIxLWlyIiwgICAgInItYXBiMSIsCj4gICAgICAgICAgICAgICAgICAgICAgIDB4
MWNjLCBCSVQoMCksIDApOwo+ICBzdGF0aWMgU1VOWElfQ0NVX0dBVEUocl9hcGIxX3cxX2Nsaywg
ICAici1hcGIxLXcxIiwgICAgInItYXBiMSIsCj4gLSAgICAgICAgICAgICAgICAgICAgIDB4MWNj
LCBCSVQoMCksIDApOwo+ICsgICAgICAgICAgICAgICAgICAgICAweDFlYywgQklUKDApLCAwKTsK
SnVzdCBmb3IgaW5mb3JtYXRpb24gd2hlcmUgZGlkIHlvdSBmaW5kIHRoaXMgaW5mb3JtYXRpb24/
ClVzaW5nIHRoZSB2ZW5kb3Iga2VybmVsIG9yIHVzZXIgbWFudWFsPwoKVGhhbmtzLApDbMOpbWVu
dAoKPgo+ICAvKiBJbmZvcm1hdGlvbiBvZiBJUihSWCkgbW9kIGNsb2NrIGlzIGdhdGhlcmVkIGZy
b20gQlNQIHNvdXJjZSBjb2RlICovCj4gIHN0YXRpYyBjb25zdCBjaGFyICogY29uc3Qgcl9tb2Qw
X2RlZmF1bHRfcGFyZW50c1tdID0geyAib3NjMzJrIiwgIm9zYzI0TSIgfTsKPiAtLQo+IDIuMjEu
MAo+Cj4gLS0KPiBZb3UgcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGJlY2F1c2UgeW91IGFyZSBzdWJz
Y3JpYmVkIHRvIHRoZSBHb29nbGUgR3JvdXBzICJsaW51eC1zdW54aSIgZ3JvdXAuCj4gVG8gdW5z
dWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBp
dCwgc2VuZCBhbiBlbWFpbCB0byBsaW51eC1zdW54aSt1bnN1YnNjcmliZUBnb29nbGVncm91cHMu
Y29tLgo+IFRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9uIHRoZSB3ZWIsIHZpc2l0IGh0dHBzOi8v
Z3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9saW51eC1zdW54aS8yMDE5MDYwNDE1NDAzNi4yMzIx
MS0xLW1lZ291cyU0MG1lZ291cy5jb20uCj4gRm9yIG1vcmUgb3B0aW9ucywgdmlzaXQgaHR0cHM6
Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL29wdG91dC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
