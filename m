Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E2711E150
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 10:58:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFXQcgqgE+bU8Wxp1OTGOYED0IJOJdtENmmKpBaOurQ=; b=XmWn45ux2UK4pl
	qaadwHAiefrGso7PDncTru5Zov4GvgNLYI320jQMoIvXviVs2mm5/Pb/Sj4PWNtGGSNjg5pbe0bZF
	ShOIvBQ/Czq/LYqZ5k+uHdo3EZlZ+iXIvC8YnfbM4Dv3oHSUXpAKYdEVJHZOEy45jcUHLE+GrPgD1
	2amHw43lCZSrFtSQVZ7p8VCbys0WDTakAgC9zzD135UNjS5jwNJc2WDi/hCIvXGGStxeOyDNVyIVf
	EQ9ofhKBcNPlVsfq/FNCqpGsSZq8mbC0DY/Ks8W8Ay4VLw0ysRNMzl3+IoGwFl8MuJegCRg3qbRuf
	KUjmPPGil+TWD+6kIstg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhi3-0003RM-Ff; Fri, 13 Dec 2019 09:58:07 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifhhq-0003QF-Kb
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 09:57:56 +0000
Received: by mail-wr1-x442.google.com with SMTP id y11so5954329wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 01:57:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dpNbKF4B4j4oXDchU1RrJO41reoDriPtS20xCTxdXFQ=;
 b=ujociCaQeo4UzEdyNQmDF7/4gRqJCdfMiazcOKOemDS4RDAPb3Urs8ZvPzvVTZOiwY
 78nwM1Mn17kew+jLZHAv+7bT2a5l8LurKCJLi0WSnEBIil9BXqZ+e+e6Cb4Wq9bE41Sc
 lIYpC54Z6W9q6QvulK4ngX1CfdDZ0QYUTwK+UygZgaFTtMU3EcQkp2eN8nN7XuTa5fGy
 CqHMNFzD82N3bJb/nJV9aSFu54KnIUAjQ4rwpWSyZTsyzbKKLVHF5NNO/9X3OLjjZbqe
 7XTN29xCCrLkhipC1CbeG1/0q8r6XtSj9Z1ljD6ZC4OHIyEmC0M064y9dClyic4pqYoX
 nrFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dpNbKF4B4j4oXDchU1RrJO41reoDriPtS20xCTxdXFQ=;
 b=t3/RBxUnPL73/8r6Ior32aoTjESvBgi2ESbgsjLiVszJjgX9+kbB6pVx9+IIkMQpea
 +6Uwn9FWNTlgugYmnRdCCFGgS9ANZlcn3uwdM1ruBejRn33Bi1D1u1KxznQ9Gb10CZ1L
 LnuyMyqj24N/aPPUzclSGmn9G95N7ev0ijBWdIRsT2DfsJmF2qe/y9pTYXeBhbbKOflI
 yLZmCiGq0kok9HPwQ8sOteAaOGsSENo2zBD2kyDnmGM7S5ML8jNhqjQr0qcTbOx6ugMk
 kCDUTkTr4aJ1o568gxcVlzcCmDaLjt0lCIxJXHY/umexhtpWAyEUcxeim+ATTe0x/e6U
 WPhA==
X-Gm-Message-State: APjAAAWjVpRw73fWozEERJ8HV7kD2jdV4EP8Bwpy/bp28bV676UxVk6K
 8X7iq1a+ug1+gelLGQ4UsCM=
X-Google-Smtp-Source: APXvYqw/KxKkRXUonEjxr+p1HfHGF9/99eOKJSI1HzPVgp4nbjtBT1GLsgKgzov5u1Dn/l6wcsGj2w==
X-Received: by 2002:adf:fa12:: with SMTP id m18mr11322198wrr.309.1576231071861; 
 Fri, 13 Dec 2019 01:57:51 -0800 (PST)
Received: from [192.168.2.41] ([46.227.18.67])
 by smtp.gmail.com with ESMTPSA id x10sm9327133wrv.60.2019.12.13.01.57.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Dec 2019 01:57:51 -0800 (PST)
Subject: Re: [PATCH] tty/serial: atmel: fix out of range clock divider handling
To: David Engraf <david.engraf@sysgo.com>, richard.genoud@gmail.com,
 gregkh@linuxfoundation.org, jslaby@suse.com, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com
References: <20191211162954.8393-1-david.engraf@sysgo.com>
From: Richard Genoud <richard.genoud@gmail.com>
Message-ID: <822ac68e-4dde-21e8-caf9-a219b910d49e@gmail.com>
Date: Fri, 13 Dec 2019 10:57:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191211162954.8393-1-david.engraf@sysgo.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_015754_703515_695BE6F1 
X-CRM114-Status: GOOD (  20.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.genoud[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpMZSAxMS8xMi8yMDE5IMOgIDE3OjI5LCBEYXZpZCBFbmdyYWYgYSDDqWNyaXTCoDoKPiBV
c2UgTUNLX0RJVjggd2hlbiB0aGUgY2xvY2sgZGl2aWRlciBpcyA+IDY1NTM1LiBVbmZvcnR1bmF0
ZWx5IHRoZSBtb2RlCj4gcmVnaXN0ZXIgd2FzIGFscmVhZHkgd3JpdHRlbiB0aHVzIHRoZSBjbG9j
ayBzZWxlY3Rpb24gaXMgaWdub3JlZC4KPiAKPiBGaXggYnkgd3JpdGluZyB0aGUgbW9kZSByZWdp
c3RlciBhZnRlciBjYWxjdWxhdGluZyB0aGUgYmF1ZHJhdGUuCj4gCj4gU2lnbmVkLW9mZi1ieTog
RGF2aWQgRW5ncmFmIDxkYXZpZC5lbmdyYWZAc3lzZ28uY29tPgoKSXQgc2VlbXMgdGhhdCB0aGlz
IGJ1ZyB3YXMgaW50cm9kdWNlZCBieToKY29tbWl0IDViZjU2MzVhYzE3MCAoInR0eS9zZXJpYWw6
IGF0bWVsOiBhZGQgZnJhY3Rpb25hbCBiYXVkIHJhdGUgc3VwcG9ydCIpCgpDb3VsZCB5b3UgYWRk
IHRoZSAiRml4ZXM6IiBoZWFkZXIgPwoKTHVkb3ZpYywgY291bGQgeW91IGNoZWNrIGlmIHRoaXMg
d2FzIHlvdXIgaW50ZW50IGF0IHRoZSB0aW1lID8KCj4gLS0tCj4gIGRyaXZlcnMvdHR5L3Nlcmlh
bC9hdG1lbF9zZXJpYWwuYyB8IDYgKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3Nlcmlh
bC9hdG1lbF9zZXJpYWwuYyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9hdG1lbF9zZXJpYWwuYwo+IGlu
ZGV4IGE4ZGM4YWY4M2YzOS4uOTk4M2UyZmFiYmFjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdHR5
L3NlcmlhbC9hdG1lbF9zZXJpYWwuYwo+ICsrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9hdG1lbF9z
ZXJpYWwuYwo+IEBAIC0yMjcwLDkgKzIyNzAsNiBAQCBzdGF0aWMgdm9pZCBhdG1lbF9zZXRfdGVy
bWlvcyhzdHJ1Y3QgdWFydF9wb3J0ICpwb3J0LCBzdHJ1Y3Qga3Rlcm1pb3MgKnRlcm1pb3MsCj4g
IAkJbW9kZSB8PSBBVE1FTF9VU19VU01PREVfTk9STUFMOwo+ICAJfQo+ICAKSSB0aGluayBpdCdz
IGJldHRlciB0byBtbyBtb3ZlIHRoZSAiU2V0IGJhdWQgcmF0ZSIgYmxvY2sgaGVyZSAoY2YgYmVs
bG93KQoKPiAtCS8qIHNldCB0aGUgbW9kZSwgY2xvY2sgZGl2aXNvciwgcGFyaXR5LCBzdG9wIGJp
dHMgYW5kIGRhdGEgc2l6ZSAqLwo+IC0JYXRtZWxfdWFydF93cml0ZWwocG9ydCwgQVRNRUxfVVNf
TVIsIG1vZGUpOwo+IC0KPiAgCS8qCj4gIAkgKiB3aGVuIHN3aXRjaGluZyB0aGUgbW9kZSwgc2V0
IHRoZSBSVFMgbGluZSBzdGF0ZSBhY2NvcmRpbmcgdG8gdGhlCj4gIAkgKiBuZXcgbW9kZSwgb3Ro
ZXJ3aXNlIGtlZXAgdGhlIGZvcm1lciBzdGF0ZQo+IEBAIC0yMzE1LDYgKzIzMTIsOSBAQCBzdGF0
aWMgdm9pZCBhdG1lbF9zZXRfdGVybWlvcyhzdHJ1Y3QgdWFydF9wb3J0ICpwb3J0LCBzdHJ1Y3Qg
a3Rlcm1pb3MgKnRlcm1pb3MsCj4gIAl9Cj4gIAlxdW90ID0gY2QgfCBmcCA8PCBBVE1FTF9VU19G
UF9PRkZTRVQ7Cj4gIAo+ICsJLyogc2V0IHRoZSBtb2RlLCBjbG9jayBkaXZpc29yLCBwYXJpdHks
IHN0b3AgYml0cyBhbmQgZGF0YSBzaXplICovCj4gKwlhdG1lbF91YXJ0X3dyaXRlbChwb3J0LCBB
VE1FTF9VU19NUiwgbW9kZSk7Cj4gKwpJIHRoaW5rIHlvdXIgcGF0Y2ggaXMgZ29vZCwgYnV0IEkn
bGwgYmUgaGFwcGllciBpZiBpbnN0ZWFkIG9mIG1vdmluZwp0aG9zZSAyIGxpbmVzIGhlcmUsIHRo
ZSB3aG9sZSAiU2V0IHRoZSBiYXVkIHJhdGUiIGJsb2NrIHdhcyBtb3ZlZCBiZWZvcmUKImF0bWVs
X3VhcnRfd3JpdGVsKHBvcnQsIEFUTUVMX1VTX01SLCBtb2RlKTsiCgpUaGF0J3MgYmVjYXVzZSBh
dCBsaW5lIDIyOTEgdGhlIEFUTUVMX1VTX0NSIHJlZ2lzdGVyIGlzIHNldCB3aXRoCkFUTUVMX1VT
X1JUU0RJUyBvciBBVE1FTF9VU19SVFNFTi4KQW5kIHRob3NlIDIgdmFsdWVzIGhhdmUgYSBkaWZm
ZXJlbnQgZWZmZWN0IGRlcGVuZGluZyBvbiBVU19NUi5VU0FSVF9NT0RFCgpRdW90aW5nIGZyb20g
dGhlIHJlbGFzZSBtYW51YWw6ClJUU0VOOgoxOiBEcml2ZXMgUlRTIHBpbiB0byAxIGlmIFVTX01S
LlVTQVJUX01PREUgZmllbGQgPSAyLCBlbHNlIGRyaXZlcyBSVFMKcGluIHRvIDAgaWYgVVNfTVIu
VVNBUlRfTU9ERSBmaWVsZCA9IDAuCgpSVFNESVM6CjE6IERyaXZlcyBSVFMgcGluIHRvIDAgaWYg
VVNfTVIuVVNBUlRfTU9ERSBmaWVsZCA9IDIsIGVsc2UgZHJpdmVzIFJUUwpwaW4gdG8gMSBpZiBV
U19NUi5VU0FSVF9NT0RFIGZpZWxkID0gMC4KClNvLCBJIHRoaW5rIGl0J3MgYmV0dGVyIHRvIHNl
dCB0aGUgbW9kZSByZWdpc3RlciBiZWZvcmUgc2V0dGluZyB0aGUKY29udHJvbCByZWdpc3Rlci4K
Cgo+ICAJaWYgKCEocG9ydC0+aXNvNzgxNi5mbGFncyAmIFNFUl9JU083ODE2X0VOQUJMRUQpKQo+
ICAJCWF0bWVsX3VhcnRfd3JpdGVsKHBvcnQsIEFUTUVMX1VTX0JSR1IsIHF1b3QpOwo+ICAJYXRt
ZWxfdWFydF93cml0ZWwocG9ydCwgQVRNRUxfVVNfQ1IsIEFUTUVMX1VTX1JTVFNUQSB8IEFUTUVM
X1VTX1JTVFJYKTsKPiAKClRoYW5rcyAhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
