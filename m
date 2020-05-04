Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 433141C3E3F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 17:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sc251eIG/dvFrsclfsJrB6OdWdFz26CiRUnRbMr0Ydg=; b=Cuxe1ge1rBiMOE
	b4kzgtyVY4Z3oX0hVfTWQNRUlVJ/wHCZQ0kmofnynnlSlgtty+pwq6ylxGXensUE8fgnwcCeMi5JI
	JXBVpPXyyMTD9cqQ8qOy+lL25WAsXWHD30o2B2TD6ZLQy56l65I/feyCgcoIW1VBUTv/Y1xyhxLWr
	zCg+jUq6Fs04OA/XHvnaq7+G0VmYMFG/ICg4iPz9B//rnlUmjpFa+Oi6x4P6TxLCInq9oP45hAinV
	s0EjgV4t5TzF0b2G1WStXG3WmmberCeftqKJg17beZiUp1vQPVEIlq+K5DPRnvOO27nci+8/7y+Tr
	7ZGAGwl2dK/Ljwt6MXfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVcoW-0003Y9-2F; Mon, 04 May 2020 15:15:24 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVcoL-0003LE-3I
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 15:15:14 +0000
Received: by mail-ed1-f65.google.com with SMTP id d16so13832733edq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 08:15:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=LCc+eYdO3tX3LkVF95rDTpEk+HBT/KELfuXGkU4VVhM=;
 b=D0sqbXOvfKIaDrXHpYm9tRRFcPp2RKLclcxtj03U0K5Qqr+NcKBm5x4ClCTT+yk7Vn
 iXYdalnb2gf12FZkCaUHW+5rGrHhKkAwfpYNkccVe3zdG5bx7LRPAqEirfrArWBGNS7t
 TuxtrJigEpHGOsAkNj3CfwmOOlWjDE0CA70BmzTaAy5Edjb8yRePuNX+rnjv7F++xEWv
 AiZsgLjh/eFmAJZ4SNto9g1mk2ltRFQjaHEPRG+8htn8IjdvHiLnxXH3l1IiVBya8nVE
 YJddVOCp0Iq2z9LeVpKh75QCaj22Tweu9Kdni55KkAdnpGaCs2C56h9SBOV9OaP9g92l
 cBXQ==
X-Gm-Message-State: AGi0PuZ6pIAeaGMSTXl8C4c3v4o5aTKSs0Yr9u/lC/WIjIE6rtgNWRLB
 JEsegaQUlOKjqafBH9g4gFM=
X-Google-Smtp-Source: APiQypLgL0BNupES2fskOUM21pKl/rDCVu+OP0SF7FJCBNEdF6HBSjXWjjho1YvOBX3WBlLXsQtV9g==
X-Received: by 2002:a05:6402:22a6:: with SMTP id
 cx6mr14498532edb.277.1588605310748; 
 Mon, 04 May 2020 08:15:10 -0700 (PDT)
Received: from kozik-lap ([194.230.155.237])
 by smtp.googlemail.com with ESMTPSA id 10sm1488687ejt.80.2020.05.04.08.15.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 04 May 2020 08:15:10 -0700 (PDT)
Date: Mon, 4 May 2020 17:15:08 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jonathan Bakker <xc-racer2@live.ca>
Subject: Re: [PATCH v2 00/18] S5PV210 and Aries DTS improvements
Message-ID: <20200504151508.GA3205@kozik-lap>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <BN6PR04MB066033FD7FF6E5C37747C7A2A3AB0@BN6PR04MB0660.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN6PR04MB066033FD7FF6E5C37747C7A2A3AB0@BN6PR04MB0660.namprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_081513_155482_02F7BC88 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMDEsIDIwMjAgYXQgMDQ6NTA6MDFQTSAtMDcwMCwgSm9uYXRoYW4gQmFra2Vy
IHdyb3RlOgo+IFRoaXMgcGF0Y2hzZXQgbWFrZXMgc2V2ZXJhbCBpbXByb3ZlbWVudHMgdG8gQXJp
ZXMgZGV2aWNlcyB3aGljaCBhcmUKPiBiYXNlZCBvbiBTNVBWMjEwLiAgU2V2ZXJhbCBwdWxscyBv
biBHUElPcyB3ZXJlIGluY29ycmVjdC9ub3Qgc3BlY2lmaWVkLAo+IHNsZWVwIEdQSU8gY29uZmln
dXJhdGlvbnMgaGF2ZSBiZWVuIGFkZGVkLCBhbmQgbW9yZSBkZXZpY2VzIGhhdmUgYmVlbgo+IGFk
ZGVkLgo+IAo+IFRvdWNoaW5nIHRoZSBjb21tb24gUzVQVjIxMCBEVFNJIGFyZSB0aGUgYWRkaXRp
b24gb2YgdGhlIEFEQyBub2RlCj4gYXMgd2VsbCBhcyBmaXhlcyB0byB0aGUgRklNQyBkZWZpbml0
aW9ucyBhbmQgYSBzbGVlcCBHUElPIGhlbHBlcgo+IGFkZGVkLiAgVGhlIEdQSSBncGlvIG5vZGUg
bmFtZSBoYXMgYmVlbiBjb3JyZWN0ZWQuCj4gCj4gVGhlIHBhdGNoZXMgaGF2ZSBiZWVuIHRlc3Rl
ZCBvbiBib3RoIGEgR1QtaTkwMDAgYXMgd2VsbCBhcyBhbgo+IFNHSC1UOTU5UCBhbmQgYm90aCBj
YW4gbm93IHN1c3BlbmQvcmVzdW1lIHByb3Blcmx5Lgo+IAo+IENoYW5nZXMgZnJvbSB2MToKPiAt
IENvcnJlY3QgQURDIG5vZGUgbmFtZSB0byBtYXRjaCByZWcKPiAtIFJlc3RvcmUgcmVtb3ZlZCBy
ZWd1bGF0b3Igc3VzcGVuZCBzdGF0ZQo+IC0gU3BsaXQgY29tbWl0IGFkZGluZyBzdXBwb3J0IGZv
ciBuZXcgZGV2aWNlcyBpbnRvIHNlcGFyYXRlIGNvbW1pdHMKPiAgIGZvciBlYWNoIGRldmljZQo+
IC0gQWRkIG5vdGUgd2hlcmUgc2xlZXAgZ3BpbyBjZmdzIGNvbWUgZnJvbQo+IC0gRW5zdXJlIHN1
YmplY3Qgb2YgYWxsIHBhdGNoZXMgbWF0Y2hlcyBzdWJzeXN0ZW0KPiAtIEFkZCBwYXRjaCBjb3Jy
ZWN0aW5nIEdQSSBub2RlIG5hbWUKPiAKPiAKPiBKb25hdGhhbiBCYWtrZXIgKDE3KToKPiAgIEFS
TTogZHRzOiBzNXB2MjEwOiBBZGQgaGVscGVyIGRlZmluZSBmb3Igc2xlZXAgZ3BpbyBjb25maWcK
PiAgIEFSTTogZHRzOiBzNXB2MjEwOiBBZGQgc2xlZXAgR1BJTyBjb25maWd1cmF0aW9uIGZvciBm
YXNjaW5hdGU0Zwo+ICAgQVJNOiBkdHM6IHM1cHYyMTA6IEFkZCBzbGVlcCBHUElPIGNvbmZpZ3Vy
YXRpb24gZm9yIGdhbGF4eXMKPiAgIEFSTTogZHRzOiBzNXB2MjEwOiBTZXQga2VlcC1wb3dlci1p
bi1zdXNwZW5kIGZvciBTREhDSTEgb24gYXJpZXMKPiAgIEFSTTogZHRzOiBzNXB2MjEwOiBEaXNh
YmxlIHB1bGxzIG9uIEdQSU8gaTJjIGFkYXB0ZXJzIGZvciBhcmllcwo+ICAgQVJNOiBkdHM6IHM1
cHYyMTA6IEFkZCBXTTg5OTQgc3VwcG9ydCB0byBhcmllcyBib2FyZHMKPiAgIEFSTTogZHRzOiBz
NXB2MjEwOiBBZGQgRlNBOTQ4MCBzdXBwb3J0IHRvIEFyaWVzIGJvYXJkcwo+ICAgQVJNOiBkdHM6
IHM1cHYyMTA6IEFkZCB0b3VjaGtleSBzdXBwb3J0IHRvIGFyaWVzIGJvYXJkcwo+ICAgQVJNOiBk
dHM6IHM1cHYyMTA6IEFkZCBwYW5lbCBzdXBwb3J0IHRvIGFyaWVzIGJvYXJkcwo+ICAgQVJNOiBk
dHM6IHM1cHYyMTA6IEFkZCByZW1haW5pbmcgaTJjLWdwaW8gYWRhcHRlcnMgdG8gYXJpZXMKPiAg
IEFSTTogZHRzOiBzNXB2MjEwOiBEaXNhYmxlIHB1bGwgZm9yIHZpYnJhdG9yIGVuYSBHUElPIG9u
IGFyaWVzCj4gICBBUk06IGR0czogczVwdjIxMDogQWRkIGFuIEFEQyBub2RlCj4gICBBUk06IGR0
czogczVwdjIxMDogRW5hYmxlIEFEQyBvbiBhcmllcyBib2FyZHMKPiAgIEFSTTogZHRzOiBzNXB2
MjEwOiBBc3NpZ24gY2xvY2tzIHRvIE1NQyBkZXZpY2VzIG9uIGFyaWVzCj4gICBBUk06IGR0czog
czVwdjIxMDogQ29ycmVjdCBGSU1DIGRlZmluaXRpb25zCj4gICBBUk06IGR0czogczVwdjIxMDog
U2V0IE1BWDg5OTggR1BJTyBwdWxscyBvbiBhcmllcwo+ICAgQVJNOiBkdHM6IHM1cHYyMTA6IENv
cnJlY3QgZ3BpIGdwaW8gbm9kZSBuYW1lCj4gCj4gUGF3ZcWCIENobWllbCAoMSk6Cj4gICBBUk06
IGR0czogczVwdjIxMDogQWRkIHNpNDcweCBmbXJhZGlvIHRvIGdhbGF4eXMKPgoKTmljZSBqb2Ih
CgpUaGFua3MsIEkgYXBwbGllZCBlbnRpcmUgc2V0LgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
