Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B78ED130A35
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 23:22:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qcOFl0sNCggLPqovywc4oaUytevGrHbZOlinzz29cGI=; b=jq+vtVUsU5I8Az
	St3sZrQSJw0P5weG2P/oURf3dCXO1ZLg0Thot9SmjzbBgbKCTbaTLhTgapnEM1O5PvvX/vf5quPdP
	UREQZGEvgJNWvnyc0cP+/Zp1XKrt4cYP9OVUUJ/ddWolhwyLQmNl75tDCUFXi4ahTUKk+YGtU+mU/
	P1H+OXy/AhBmVm3KHv7DKuJq82oVLw/PBp650O6eJLb/QpdJYeyA3St8GBPMkyAOENxoaj6d3ZYHG
	nymrz4warQQHjMlKs9fsG7q0KUnmk7/fLQ9Z1dHSpiI1jxi8rop4Hg1/Nq4Jx7Gj62zG8BJnYBg8+
	pne0C7GxMul2zlucnYnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioEHl-0002OR-EV; Sun, 05 Jan 2020 22:22:13 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioEHc-0002O4-Kz
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Jan 2020 22:22:06 +0000
Received: by mail-pl1-x641.google.com with SMTP id c23so21105927plz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Jan 2020 14:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8kerBVRkk84cjC6T6qwed9ESYieZ/qfnqyK9xJHPGjo=;
 b=EVyLoYEkeN5rjLZ7eO/Ot/edkvCk+cI4BtZqpf1CnMni1h4z0g7jiF6PD9+mUvuXgd
 40Gej/pR9/EgaQg6X3DgarUPONWgXNK1l5XJiqayLQRhLhp7NOTYRdKnl8DyaSTDZtQZ
 UA9jkouWqcZR11u3OiTTDWNo0dQDjg+VE4wLkdo9sNrAqqrYGS6FxkxgV3CYiyeUuc1R
 W3OJKSjLxZQzYVPF5bsVKD55PdMoeqAb7QEerLUefquyHgbwXL1S9eMqi5CIhFtCEkpD
 c9Be/0gnIj5W/buHY8vFumABrA4Fn7rh132VpZ6rUmFdi2fWrAPnH3fw2WDmWuXNHLYD
 wz2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=8kerBVRkk84cjC6T6qwed9ESYieZ/qfnqyK9xJHPGjo=;
 b=m71s0S9M/Ef0MAbTUpGhtbPdL9BsJuc/piWhPGTx+maYzggGi4ROiHZrQDzKs3MS7w
 37finVF1zvwLrt33ET5qIedTV1ZPpSpzyXCFhbB3jP9EPeWtnl4zJcqxJAHIEvRfk/Bm
 oMJwYHF3ycmmI0xJia0dB4zNoKQ0tVzu0IInMQGEV2AkpCjp2R9Y13iWVKg0Gaw6jctI
 uyz3drGzLQZMmxRj0wwZ0Py25tT6DPrvsZRbrQktsRewzC12szG4eXrPXK3Ps4PWBxTR
 Ay9rs7F4EBvIs9ZymzNOyiiycIc82ArHPGhf5Ly9mm6mMEE66j7C3h2HehPZUtB7ccMm
 Z8nQ==
X-Gm-Message-State: APjAAAV11epXbxXWr5I7A+2w6+gyvDmLRxCFmPEA2xTWy7XrO7ukvg1F
 KusQTmPfsGIK6B3LCrdP2To=
X-Google-Smtp-Source: APXvYqzfoBpzqctZdzjfhmb6BzPY7Np8IhxEXe95q94lL5/MH2lVChZI9h/4xOJaMv1zYgOhx21eqw==
X-Received: by 2002:a17:902:8503:: with SMTP id
 bj3mr100530216plb.180.1578262922683; 
 Sun, 05 Jan 2020 14:22:02 -0800 (PST)
Received: from [10.230.28.123] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id b193sm67411327pfb.57.2020.01.05.14.22.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 05 Jan 2020 14:22:02 -0800 (PST)
Subject: Re: [PATCH] net: stmmac: platform: Fix MDIO init for platforms
 without PHY
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, David Miller <davem@davemloft.net>,
 sriram.dash@samsung.com, p.rajanbabu@samsung.com, pankaj.dubey@samsung.com
References: <CGME20191219102407epcas5p103b26e6fb191f7135d870a3449115c89@epcas5p1.samsung.com>
 <1576750621-78066-1-git-send-email-p.rajanbabu@samsung.com>
 <20191220.212918.1661751615125167321.davem@davemloft.net>
 <1700835.tBzmY8zkgn@diego>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; keydata=
 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
 a9BQwACgnzGuH1BVeT2J0Ra+ZYgkx7DaPR0=
Message-ID: <c25fbdb3-0e60-6e54-d58a-b05e8b805a58@gmail.com>
Date: Sun, 5 Jan 2020 14:22:00 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <1700835.tBzmY8zkgn@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_142204_717572_020476F2 
X-CRM114-Status: GOOD (  25.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jose.Abreu@synopsys.com, jayati.sahu@samsung.com, alexandre.torgue@st.com,
 rcsekar@samsung.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpPbiAxLzUvMjAyMCAxMjo0MyBQTSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4g
SGksCj4gCj4gQW0gU2Ftc3RhZywgMjEuIERlemVtYmVyIDIwMTksIDA2OjI5OjE4IENFVCBzY2hy
aWViIERhdmlkIE1pbGxlcjoKPj4gRnJvbTogUGFkbWFuYWJoYW4gUmFqYW5iYWJ1IDxwLnJhamFu
YmFidUBzYW1zdW5nLmNvbT4KPj4gRGF0ZTogVGh1LCAxOSBEZWMgMjAxOSAxNTo0NzowMSArMDUz
MAo+Pgo+Pj4gVGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gb2YgInN0bW1hY19kdF9waHkiIGZ1
bmN0aW9uIGluaXRpYWxpemVzCj4+PiB0aGUgTURJTyBwbGF0Zm9ybSBidXMgZGF0YSwgZXZlbiBp
biB0aGUgYWJzZW5jZSBvZiBQSFkuIFRoaXMgZml4Cj4+PiB3aWxsIHNraXAgTURJTyBpbml0aWFs
aXphdGlvbiBpZiB0aGVyZSBpcyBubyBQSFkgcHJlc2VudC4KPj4+Cj4+PiBGaXhlczogNzQzNzEy
NyAoIm5ldDogc3RtbWFjOiBDb252ZXJ0IHRvIHBoeWxpbmsgYW5kIHJlbW92ZSBwaHlsaWIgbG9n
aWMiKQo+Pj4gQWNrZWQtYnk6IEpheWF0aSBTYWh1IDxqYXlhdGkuc2FodUBzYW1zdW5nLmNvbT4K
Pj4+IFNpZ25lZC1vZmYtYnk6IFNyaXJhbSBEYXNoIDxzcmlyYW0uZGFzaEBzYW1zdW5nLmNvbT4K
Pj4+IFNpZ25lZC1vZmYtYnk6IFBhZG1hbmFiaGFuIFJhamFuYmFidSA8cC5yYWphbmJhYnVAc2Ft
c3VuZy5jb20+Cj4+Cj4+IEFwcGxpZWQgYW5kIHF1ZXVlZCB1cCBmb3IgLXN0YWJsZSwgdGhhbmtz
Lgo+IAo+IHdpdGggdGhpcyBwYXRjaCBhcHBsaWVkIEkgbm93IHJ1biBpbnRvIGlzc3VlcyBvbiBt
dWx0aXBsZSByb2NrY2hpcAo+IHBsYXRmb3JtcyB1c2luZyBhIGdtYWMgaW50ZXJmYWNlLgoKRG8g
eW91IGhhdmUgYSBsaXN0IG9mIERUUyBmaWxlcyB0aGF0IGFyZSBhZmZlY3RlZCBieSBhbnkgY2hh
bmNlPyBGb3IgdGhlCjMyLWJpdCBwbGF0Zm9ybXMgdGhhdCBJIGxvb2tlZCBpdCwgaXQgc2VlbXMg
bGlrZToKCmFyY2gvYXJtL2Jvb3QvZHRzL3JrMzIyOC1ldmIuZHRzIGlzIE9LIGJlY2F1c2UgaXQg
aGFzIGEgTURJTyBidXMgbm9kZQphcmNoL2FybS9ib290L2R0cy9yazMyMjkteG1zNi5kdHMgaXMg
YWxzbyBPSwoKYXJjaC9hcm0vYm9vdC9kdHMvcmszMjI5LWV2Yi5kdHMgaXMgcHJvYmFibHkgYnJv
a2VuLCB0aGVyZSBpcyBubwpwaHktaGFuZGxlIHByb3BlcnR5IG9yIE1ESU8gYnVzIG5vZGUsIHNv
IGl0IG11c3QgYmUgcmVseWluZyBvbgphdXRvLXNjYW5uaW5nIG9mIHRoZSBidXMgc29tZWhvdyB0
aGF0IHRoaXMgcGF0Y2ggYnJva2UuCgpBbmQgbGlrZXdpc2UgZm9yIG1vc3QgNjQtYml0IHBsYXRm
b3JtcyBleGNlcHQgYTEgYW5kIG5hbm9waTQuCgo+IAo+IFdoZW4gcHJvYmluZyB0aGUgZHJpdmVy
IGFuZCB0cnlpbmcgdG8gZXN0YWJsaXNoIGEgY29ubmVjdGlvbiBmb3IgYSBuZnNyb290Cj4gaXQg
YWx3YXlzIHJ1bnMgaW50byBhIG51bGwgcG9pbnRlciBpbiBtZGlvYnVzX2dldF9waHkoKToKPiAK
PiBbICAgMjYuODc4ODM5XSBya19nbWFjLWR3bWFjIGZmMzYwMDAwLmV0aGVybmV0OiBJUlEgZXRo
X3dha2VfaXJxIG5vdCBmb3VuZAo+IFsgICAyNi44ODYzMjJdIHJrX2dtYWMtZHdtYWMgZmYzNjAw
MDAuZXRoZXJuZXQ6IElSUSBldGhfbHBpIG5vdCBmb3VuZAo+IFsgICAyNi44OTQ1MDVdIHJrX2dt
YWMtZHdtYWMgZmYzNjAwMDAuZXRoZXJuZXQ6IFBUUCB1c2VzIG1haW4gY2xvY2sKPiBbICAgMjYu
OTA4MjA5XSBya19nbWFjLWR3bWFjIGZmMzYwMDAwLmV0aGVybmV0OiBjbG9jayBpbnB1dCBvciBv
dXRwdXQ/IChvdXRwdXQpLgo+IFsgICAyNi45MTYyNjldIHJrX2dtYWMtZHdtYWMgZmYzNjAwMDAu
ZXRoZXJuZXQ6IENhbiBub3QgcmVhZCBwcm9wZXJ0eTogdHhfZGVsYXkuCj4gWyAgIDI2LjkyNDI5
N10gcmtfZ21hYy1kd21hYyBmZjM2MDAwMC5ldGhlcm5ldDogc2V0IHR4X2RlbGF5IHRvIDB4MzAK
PiBbICAgMjYuOTMxMTUwXSBya19nbWFjLWR3bWFjIGZmMzYwMDAwLmV0aGVybmV0OiBDYW4gbm90
IHJlYWQgcHJvcGVydHk6IHJ4X2RlbGF5Lgo+IFsgICAyNi45MzkxNjZdIHJrX2dtYWMtZHdtYWMg
ZmYzNjAwMDAuZXRoZXJuZXQ6IHNldCByeF9kZWxheSB0byAweDEwCj4gWyAgIDI2Ljk0NjAyMV0g
cmtfZ21hYy1kd21hYyBmZjM2MDAwMC5ldGhlcm5ldDogaW50ZWdyYXRlZCBQSFk/IChubykuCj4g
WyAgIDI2Ljk1MzAzMl0gcmtfZ21hYy1kd21hYyBmZjM2MDAwMC5ldGhlcm5ldDogY2Fubm90IGdl
dCBjbG9jayBjbGtfbWFjX3JlZm91dAo+IFsgICAyNi45NjYxNjFdIHJrX2dtYWMtZHdtYWMgZmYz
NjAwMDAuZXRoZXJuZXQ6IGluaXQgZm9yIFJNSUkKPiBbICAgMjYuOTcyNjMzXSBya19nbWFjLWR3
bWFjIGZmMzYwMDAwLmV0aGVybmV0OiBVc2VyIElEOiAweDEwLCBTeW5vcHN5cyBJRDogMHgzNQo+
IFsgICAyNi45ODA4MzBdIHJrX2dtYWMtZHdtYWMgZmYzNjAwMDAuZXRoZXJuZXQ6ICAgICAgICAg
RFdNQUMxMDAwCj4gWyAgIDI2Ljk4NjczNV0gcmtfZ21hYy1kd21hYyBmZjM2MDAwMC5ldGhlcm5l
dDogRE1BIEhXIGNhcGFiaWxpdHkgcmVnaXN0ZXIgc3VwcG9ydGVkCj4gWyAgIDI2Ljk5NTE0NV0g
cmtfZ21hYy1kd21hYyBmZjM2MDAwMC5ldGhlcm5ldDogUlggQ2hlY2tzdW0gT2ZmbG9hZCBFbmdp
bmUgc3VwcG9ydGVkCj4gWyAgIDI3LjAwMzU0MF0gcmtfZ21hYy1kd21hYyBmZjM2MDAwMC5ldGhl
cm5ldDogQ09FIFR5cGUgMgo+IFsgICAyNy4wMDk0MDhdIHJrX2dtYWMtZHdtYWMgZmYzNjAwMDAu
ZXRoZXJuZXQ6IFRYIENoZWNrc3VtIGluc2VydGlvbiBzdXBwb3J0ZWQKPiBbICAgMjcuMDE3MzIw
XSBya19nbWFjLWR3bWFjIGZmMzYwMDAwLmV0aGVybmV0OiBXYWtlLVVwIE9uIExhbiBzdXBwb3J0
ZWQKPiBbICAgMjcuMDI0NTc3XSBya19nbWFjLWR3bWFjIGZmMzYwMDAwLmV0aGVybmV0OiBOb3Jt
YWwgZGVzY3JpcHRvcnMKPiBbICAgMjcuMDMxMjExXSBya19nbWFjLWR3bWFjIGZmMzYwMDAwLmV0
aGVybmV0OiBSaW5nIG1vZGUgZW5hYmxlZAo+IFsgICAyNy4wMzc3NDNdIHJrX2dtYWMtZHdtYWMg
ZmYzNjAwMDAuZXRoZXJuZXQ6IEVuYWJsZSBSWCBNaXRpZ2F0aW9uIHZpYSBIVyBXYXRjaGRvZyBU
aW1lcgo+IFsgICAyNy4yMDk4MjNdIFVuYWJsZSB0byBoYW5kbGUga2VybmVsIE5VTEwgcG9pbnRl
ciBkZXJlZmVyZW5jZSBhdCB2aXJ0dWFsIGFkZHJlc3MgMDAwMDAwMDAwMDAwMDM5OAo+ICAySVAt
Q29uZmlnOiBldGgwIGhhcmR3YXJlIGFkZHJlc3MgIDY2OmU0OjliOmIxOjMwOmMzIG10dSAxNTAw
IERIQ1AKPiA3LjIxOTY4MV0gTWVtIGFib3J0IGluZm86Cj4gWyAgIDI3LjIyOTMyMl0gICBFU1Ig
PSAweDk2MDAwMDA2Cj4gWyAgIDI3LjIyOTMyOF0gICBFQyA9IDB4MjU6IERBQlQgKGN1cnJlbnQg
RUwpLCBJTCA9IDMyIGJpdHMKPiBbICAgMjcuMjI5MzMwXSAgIFNFVCA9IDAsIEZuViA9IDAKPiBb
ICAgMjcuMjI5MzMyXSAgIEVBID0gMCwgUzFQVFcgPSAwCj4gWyAgIDI3LjIyOTMzNF0gRGF0YSBh
Ym9ydCBpbmZvOgo+IFsgICAyNy4yMjkzMzZdICAgSVNWID0gMCwgSVNTID0gMHgwMDAwMDAwNgo+
IFsgICAyNy4yMjkzMzhdICAgQ00gPSAwLCBXblIgPSAwCj4gWyAgIDI3LjIyOTM0Ml0gdXNlciBw
Z3RhYmxlOiA0ayBwYWdlcywgNDgtYml0IFZBcywgcGdkcD0wMDAwMDAwMDNlN2Q0MDAwCj4gWyAg
IDI3LjIyOTM0NV0gWzAwMDAwMDAwMDAwMDAzOThdIHBnZD0wMDAwMDAwMDM2NzM5MDAzLCBwdWQ9
MDAwMDAwMDAzNTg5NDAwMywgcG1kPTAwMDAwMDAwMDAwMDAwMDAKPiBbICAgMjcuMjczMzk4XSBJ
bnRlcm5hbCBlcnJvcjogT29wczogOTYwMDAwMDYgWyMxXSBTTVAKPiBbICAgMjcuMjczNDAzXSBN
b2R1bGVzIGxpbmtlZCBpbjogc21zYzk1eHggc21zYzc1eHggYXg4ODE3OV8xNzhhIGFzaXggdXNi
bmV0IHBhbmVsX2xlYWR0ZWtfbHRrNTAwaGQxODI5IGR3bWFjX3JrIHN0bW1hY19wbGF0Zm9ybSBz
dG1tYWMgcm9ja2NoaXBkcm0gcGh5X3JvY2tjaGlwX2lubm9fZHNpZHBoeSBhbmFsb2dpeF9kcCBk
d19oZG1pIGNlYyByCj4gY19jb3JlIGR3X21pcGlfZHNpIGRybV9rbXNfaGVscGVyIHJ0Y19yazgw
OCBkcm0gZHJtX3BhbmVsX29yaWVudGF0aW9uX3F1aXJrcwo+IFsgICAyNy4zMDU3ODVdIENQVTog
MyBQSUQ6IDEzODggQ29tbTogaXBjb25maWcgTm90IHRhaW50ZWQgNS41LjAtcmM0LTAwOTM0LWdk
NTdlNTY2ZTY4NzQgIzE0NjMKPiBbICAgMjcuMzA1NzkwXSBIYXJkd2FyZSBuYW1lOiBUaGVvYnJv
bWEgU3lzdGVtcyBDb2JyYSB3aXRoIExlYWR0ZWsgRGlzcGxheSAoRFQpCj4gWyAgIDI3LjMyMzAw
Nl0gcHN0YXRlOiA0MDAwMDAwNSAoblpjdiBkYWlmIC1QQU4gLVVBTykKPiBbICAgMjcuMzIzMDIw
XSBwYyA6IG1kaW9idXNfZ2V0X3BoeSsweDQvMHgyMAo+IFsgICAyNy4zMzI4NjddIGxyIDogc3Rt
bWFjX29wZW4rMHg3ODAvMHhhNzggW3N0bW1hY10KPiBbICAgMjcuMzMyODcyXSBzcCA6IGZmZmY4
MDAwMTExM2I5YTAKPiBbICAgMjcuMzQxODIzXSB4Mjk6IGZmZmY4MDAwMTExM2I5YTAgeDI4OiAw
MDAwMDAwMDAwNDAxMDAzCj4gWyAgIDI3LjM0Nzc2MV0geDI3OiBmZmZmMDAwMDNkNWNmMjAwIHgy
NjogMDAwMDAwMDAwMDAwMDAwMAo+IFsgICAyNy4zNTM2OTldIHgyNTogMDAwMDAwMDAwMDAwMDAw
MSB4MjQ6IDAwMDAwMDAwMDAwMDAwMDAKPiBbICAgMjcuMzU5NjM2XSB4MjM6IDAwMDAwMDAwMDAw
MDEwMDIgeDIyOiBmZmZmODAwMDA4Yjc5MGEwCj4gWyAgIDI3LjM2NTU3NV0geDIxOiBmZmZmMDAw
MDM1Zjg0MDAwIHgyMDogMDAwMDAwMDBmZmZmZmZmZgo+IFsgICAyNy4zNzE1MTNdIHgxOTogZmZm
ZjAwMDAzNWY4NDgwMCB4MTg6IDAwMDAwMDAwMDAwMDAwMDAKPiBbICAgMjcuMzc3NDUxXSB4MTc6
IDAwMDAwMDAwMDAwMDAwMDAgeDE2OiAwMDAwMDAwMDAwMDAwMDAwCj4gWyAgIDI3LjM4MzM4OV0g
eDE1OiAwMDAwMDAwMDAwMDAwMDAwIHgxNDogZmZmZmZmZmZmZmZmZmZmZgo+IFsgICAyNy4zODkz
MjhdIHgxMzogMDAwMDAwMDAwMDAwMDAyMCB4MTI6IDAxMDEwMTAxMDEwMTAxMDEKPiBbICAgMjcu
Mzk1MjY2XSB4MTE6IDAwMDAwMDAwMDAwMDAwMDMgeDEwOiAwMTAxMDEwMTAxMDEwMTAxCj4gWyAg
IDI3LjQwMTIwM10geDkgOiBmZmZmZmZmZmZmZmZmZmZkIHg4IDogN2Y3ZjdmN2Y3ZjdmN2Y3Zgo+
IFsgICAyNy40MDcxNDNdIHg3IDogZmVmZWZlZmY2NDZjNjA2ZCB4NiA6IDFlMDkxNDQ4ZTRlNWY2
ZTkKPiBbICAgMjcuNDEzMDc0XSB4NSA6IDY5NzY2NTY0NDgxNDA5MWUgeDQgOiA4MDgwODA4MDAw
MDAwMDAwCj4gWyAgIDI3LjQxOTAxM10geDMgOiA4MzQzYzk2YjIzMmJiMzQ4IHgyIDogZmZmZjAw
MDAzZDYzZjg4MAo+IFsgICAyNy40MjQ5NTNdIHgxIDogZmZmZmZmZmZmZmZmZmZmOCB4MCA6IDAw
MDAwMDAwMDAwMDAwMDAKPiBbICAgMjcuNDMwODgyXSBDYWxsIHRyYWNlOgo+IFsgICAyNy40MzM2
MjBdICBtZGlvYnVzX2dldF9waHkrMHg0LzB4MjAKPiBbICAgMjcuNDM3NzE1XSAgX19kZXZfb3Bl
bisweGU0LzB4MTYwCj4gWyAgIDI3LjQ0MTUxNV0gIF9fZGV2X2NoYW5nZV9mbGFncysweDE2MC8w
eDFiOAo+IFsgICAyNy40NDYxOTFdICBkZXZfY2hhbmdlX2ZsYWdzKzB4MjAvMHg2MAo+IFsgICAy
Ny40NTA0NzhdICBkZXZpbmV0X2lvY3RsKzB4NjZjLzB4NzM4Cj4gWyAgIDI3LjQ1NDY2Nl0gIGlu
ZXRfaW9jdGwrMHgyZjQvMHgzNjAKPiBbICAgMjcuNDU4NTY1XSAgc29ja19kb19pb2N0bCsweDQ0
LzB4MmIwCj4gWyAgIDI3LjQ2MjY1N10gIHNvY2tfaW9jdGwrMHgxYzgvMHg1MDgKPiBbICAgMjcu
NDY2NTU2XSAgZG9fdmZzX2lvY3RsKzB4NjA0LzB4YmQwCj4gWyAgIDI3LjQ3MDY0Nl0gIGtzeXNf
aW9jdGwrMHg3OC8weGE4Cj4gWyAgIDI3LjQ3NDM1MV0gIF9fYXJtNjRfc3lzX2lvY3RsKzB4MWMv
MHgyOAo+IFsgICAyNy40Nzg3MzddICBlbDBfc3ZjX2NvbW1vbi5jb25zdHByb3AuMCsweDY4LzB4
MTYwCj4gWyAgIDI3LjQ4NDA4M10gIGVsMF9zdmNfaGFuZGxlcisweDIwLzB4ODAKPiBbICAgMjcu
NDg4MjczXSAgZWwwX3N5bmNfaGFuZGxlcisweDEwYy8weDE4MAo+IFsgICAyNy40OTI3NTNdICBl
bDBfc3luYysweDE0MC8weDE4MAo+IFsgICAyNy40OTY0NjJdIENvZGU6IDk3ZmZmZmIwIGE4YzE3
YmZkIGQ2NWYwM2MwIDhiMjFjYzAxIChmOTQxZDAyMCkKPiBbICAgMjcuNTAzMjc1XSAtLS1bIGVu
ZCB0cmFjZSA2ZjZjYTU0ZTY2YWY2ZDQ4IF0tLS0KPiAKPiBXaXRoIHRoZSBleHBlY3RlZCBvdXRw
dXQgYmVpbmcgbm9ybWFsbHkgYXQgdGhpcyBwb2ludDoKPiBbICAgMTguNTc1MzIxXSBya19nbWFj
LWR3bWFjIGZmMzYwMDAwLmV0aGVybmV0IGV0aDA6IFBIWSBbc3RtbWFjLTA6MDBdIGRyaXZlciBb
UlRMODIwMUYgRmFzdCBFdGhlcm5ldF0KPiBbICAgMTguNjAyOTc1XSBya19nbWFjLWR3bWFjIGZm
MzYwMDAwLmV0aGVybmV0IGV0aDA6IE5vIFNhZmV0eSBGZWF0dXJlcyBzdXBwb3J0IGZvdW5kCj4g
WyAgIDE4LjYxMTUwNV0gcmtfZ21hYy1kd21hYyBmZjM2MDAwMC5ldGhlcm5ldCBldGgwOiBQVFAg
bm90IHN1cHBvcnRlZCBieSBIVwo+IFsgICAxOC42MTkxMTddIHJrX2dtYWMtZHdtYWMgZmYzNjAw
MDAuZXRoZXJuZXQgZXRoMDogY29uZmlndXJpbmcgZm9yIHBoeS9ybWlpIGxpbmsgbW9kZQo+IFsg
ICAyMi43MTk0NzhdIHJrX2dtYWMtZHdtYWMgZmYzNjAwMDAuZXRoZXJuZXQgZXRoMDogTGluayBp
cyBVcCAtIDEwME1icHMvRnVsbCAtIGZsb3cgY29udHJvbCByeC90eAo+IAo+IG9yCj4gCj4gWyAg
IDI3LjMyNjk4NF0gcmtfZ21hYy1kd21hYyBmZjM2MDAwMC5ldGhlcm5ldCBldGgwOiBQSFkgW3N0
bW1hYy0wOjAwXSBkcml2ZXIgW0dlbmVyaWMgUEhZXQo+IFsgICAyNy4zNTM1NDNdIHJrX2dtYWMt
ZHdtYWMgZmYzNjAwMDAuZXRoZXJuZXQgZXRoMDogTm8gU2FmZXR5IEZlYXR1cmVzIHN1cHBvcnQg
Zm91bmQKPiBbICAgMjcuMzYyMDU1XSBya19nbWFjLWR3bWFjIGZmMzYwMDAwLmV0aGVybmV0IGV0
aDA6IFBUUCBub3Qgc3VwcG9ydGVkIGJ5IEhXCj4gWyAgIDI3LjM2OTY2M10gcmtfZ21hYy1kd21h
YyBmZjM2MDAwMC5ldGhlcm5ldCBldGgwOiBjb25maWd1cmluZyBmb3IgcGh5L3JtaWkgbGluayBt
b2RlCj4gWyAgIDI5LjQwNjc4NF0gcmtfZ21hYy1kd21hYyBmZjM2MDAwMC5ldGhlcm5ldCBldGgw
OiBMaW5rIGlzIFVwIC0gMTAwTWJwcy9GdWxsIC0gZmxvdyBjb250cm9sIHJ4L3R4Cj4gCj4gCj4g
VGhpcyBpcyB0b3J2YWxkcyBnaXQgaGVhZCBhbmQgaXQgd2FzIHN0aWxsIHdvcmtpbmcgYXQgLXJj
MSBhbmQgYWxsIGtlcm5lbHMKPiBiZWZvcmUgdGhhdC4gV2hlbiBJIGp1c3QgcmV2ZXJ0IHRoaXMg
Y29tbWl0LCB0aGluZ3MgYWxzbyBzdGFydCB3b3JraW5nCj4gYWdhaW4sIHNvIEkgZ3Vlc3Mgc29t
ZXRoaW5nIG11c3QgYmUgd3JvbmcgaGVyZT8KClllcywgdGhpcyB3YXMgYWxzbyBpZGVudGlmaWVk
IHRvIGJlIHByb2JsZW1hdGljIGJ5IHRoZSBrZXJuZWxjaSBib290CmZhcm1zIG9uIGFub3RoZXIg
cGxhdGZvcm0sIHNlZSBbMV0uCgpbMV06Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFy
bS1rZXJuZWwvNWUwMzE0ZGEuMWM2OWZiODEuYTdkNjMuMjljMUBteC5nb29nbGUuY29tLwoKRG8g
eW91IG1pbmQgdHJ5aW5nIHRoaXMgcGF0Y2ggYW5kIGxldHRpbmcgbWUga25vdyBpZiBpdCB3b3Jr
cyBmb3IgeW91LgpTcmlyYW0sIHBsZWFzZSBhbHNvIHRyeSBpdCBvbiB5b3VyIHBsYXRmb3JtcyBh
bmQgbGV0IG1lIGtub3cgaWYgc29sdmVzCnRoZSBwcm9ibGVtIHlvdSB3ZXJlIGFmdGVyLiBUaGFu
a3MKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9zdG1t
YWNfcGxhdGZvcm0uYwpiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL3N0bW1h
Y19wbGF0Zm9ybS5jCmluZGV4IGNjOGQ3ZTdiZjlhYy4uZTE5MmI4ZTA4MDllIDEwMDY0NAotLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9zdG1tYWNfcGxhdGZvcm0uYwor
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9zdG1tYWNfcGxhdGZvcm0u
YwpAQCAtMzIwLDcgKzMyMCw3IEBAIHN0YXRpYyBpbnQgc3RtbWFjX210bF9zZXR1cChzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlCipwZGV2LAogc3RhdGljIGludCBzdG1tYWNfZHRfcGh5KHN0cnVjdCBw
bGF0X3N0bW1hY2VuZXRfZGF0YSAqcGxhdCwKICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVj
dCBkZXZpY2Vfbm9kZSAqbnAsIHN0cnVjdCBkZXZpY2UgKmRldikKIHsKLSAgICAgICBib29sIG1k
aW8gPSBmYWxzZTsKKyAgICAgICBib29sIG1kaW8gPSB0cnVlOwogICAgICAgIHN0YXRpYyBjb25z
dCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIG5lZWRfbWRpb19pZHNbXSA9IHsKICAgICAgICAgICAgICAg
IHsgLmNvbXBhdGlibGUgPSAic25wcyxkd2MtcW9zLWV0aGVybmV0LTQuMTAiIH0sCiAgICAgICAg
ICAgICAgICB7fSwKQEAgLTM0MSw4ICszNDEsOSBAQCBzdGF0aWMgaW50IHN0bW1hY19kdF9waHko
c3RydWN0IHBsYXRfc3RtbWFjZW5ldF9kYXRhCipwbGF0LAogICAgICAgIH0KCiAgICAgICAgaWYg
KHBsYXQtPm1kaW9fbm9kZSkgewotICAgICAgICAgICAgICAgZGV2X2RiZyhkZXYsICJGb3VuZCBN
RElPIHN1Ym5vZGVcbiIpOwotICAgICAgICAgICAgICAgbWRpbyA9IHRydWU7CisgICAgICAgICAg
ICAgICBtZGlvID0gb2ZfZGV2aWNlX2lzX2F2YWlsYWJsZShwbGF0LT5tZGlvX25vZGUpOworICAg
ICAgICAgICAgICAgZGV2X2RiZyhkZXYsICJGb3VuZCBNRElPIHN1Ym5vZGUsIHN0YXR1czogJXNh
YmxlZFxuIiwKKyAgICAgICAgICAgICAgICAgICAgICAgbWRpbyA/ICJlbiIgOiAiZGlzIik7CiAg
ICAgICAgfQoKICAgICAgICBpZiAobWRpbykgewotLSAKRmxvcmlhbgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
