Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE9C1B8F8C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 13:50:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bl5AM6j3Z9mS4FFf5TVsyVP0o7f6dRq+X9N6gKeYHAg=; b=XBNX+Dk7KvykoMJz3rh265Qtx
	P9PmsJWjZMWrakrmJVeq0sJdy+N7toJ2eEHanKGPijeM5ZBQg6QQ4DAVchz5i1uLQ8k6IV0aSmk4S
	8AQNsAupHHUQkPbLMBoq86oLwNks85Z6g/azNUxOY/su2oPjn2lSp6ziH7aQapZBIJfL+dtwUT9M9
	O2BQkqpXZDlS1SuqnpIsQH1B5zG2y8NGITED3G6pky7lpJDeRPyd8aKOX881tPgkVWvuzeW38AeBq
	iUgArnnu/MajNTRXaC5m5pFaSKYrEplRjDCSIQQveOE2einxCvEQZ9kemzCk3oEwmMVkVsrayUJbl
	oNfvs935Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSfnv-00028E-PZ; Sun, 26 Apr 2020 11:50:35 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSfnn-00027H-PA; Sun, 26 Apr 2020 11:50:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 000ABAB64;
 Sun, 26 Apr 2020 11:50:24 +0000 (UTC)
Subject: Re: [PATCH v3 2/3] dt-bindings: arm: actions: Document Caninos Loucos
 Labrador
To: Matheus Castello <matheus@castello.eng.br>
References: <20200229104358.GB19610@mani>
 <20200320035104.26139-1-matheus@castello.eng.br>
 <20200320035104.26139-3-matheus@castello.eng.br>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <99c5fa14-cc2d-3692-fc6e-8e3fa77c5ab0@suse.de>
Date: Sun, 26 Apr 2020 13:50:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200320035104.26139-3-matheus@castello.eng.br>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_045027_966891_B253E102 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, manivannan.sadhasivam@linaro.org, igor.lima@lsitec.org.br,
 edgar.righi@lsitec.org.br, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KyBsaW51eC1hY3Rpb25zCgpBbSAyMC4wMy4yMCB1bSAwNDo1MSBzY2hyaWViIE1hdGhldXMgQ2Fz
dGVsbG86Cj4gVXBkYXRlIHRoZSBkb2N1bWVudGF0aW9uIHRvIGFkZCB0aGUgQ2FuaW5vcyBMb3Vj
b3MgTGFicmFkb3IuIExhYnJhZG9yCj4gcHJvamVjdCBjb25zaXN0cyBvZiBhIGNvbXB1dGVyIG9u
IG1vZHVsZSBiYXNlZCBvbiB0aGUgQWN0aW9ucyBTZW1pIFM1MDAKPiBwcm9jZXNzb3IgYW5kIHRo
ZSBMYWJyYWRvciBiYXNlIGJvYXJkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1hdGhldXMgQ2FzdGVs
bG8gPG1hdGhldXNAY2FzdGVsbG8uZW5nLmJyPgo+IC0tLQo+ICAgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2FybS9hY3Rpb25zLnlhbWwgfCA1ICsrKysrCj4gICAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9hcm0vYWN0aW9ucy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2FybS9hY3Rpb25zLnlhbWwKPiBpbmRleCBhY2UzZmRhYTgzOTYuLjFiMTMx
Y2ViODg0YSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
YXJtL2FjdGlvbnMueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9hcm0vYWN0aW9ucy55YW1sCj4gQEAgLTI0LDYgKzI0LDExIEBAIHByb3BlcnRpZXM6Cj4gICAg
ICAgICAgICAgICAgIC0gbGVtYWtlcixndWl0YXItYmItcmV2LWIgIyBMZU1ha2VyIEd1aXRhciBC
YXNlIEJvYXJkIHJldi4gQgo+ICAgICAgICAgICAgIC0gY29uc3Q6IGxlbWFrZXIsZ3VpdGFyCj4g
ICAgICAgICAgICAgLSBjb25zdDogYWN0aW9ucyxzNTAwCj4gKyAgICAgIC0gaXRlbXM6Cj4gKyAg
ICAgICAgICAtIGVudW06Cj4gKyAgICAgICAgICAgICAgLSBjYW5pbm9zLGxhYnJhZG9yLWJiICMg
Q2FuaW5vcyBMb3Vjb3MgTGFicmFkb3IgQmFzZSBCb2FyZAo+ICsgICAgICAgICAgLSBjb25zdDog
Y2FuaW5vcyxsYWJyYWRvcgo+ICsgICAgICAgICAgLSBjb25zdDogYWN0aW9ucyxzNTAwCj4gCj4g
ICAgICAgICAjIFRoZSBBY3Rpb25zIFNlbWkgUzcwMCBpcyBhIHF1YWQtY29yZSBBUk0gQ29ydGV4
LUE1MyBTb0MuCj4gICAgICAgICAtIGl0ZW1zOgoKTm93IHRoYXQgeW91IGNob3NlIHRvIHN0aWNr
IHdpdGggY2FuaW5vcyByYXRoZXIgdGhhbiBsc2kgcHJlZml4LCB0aGUgCnNvcnQgb3JkZXIgY29t
cGFyZWQgdG8gbGVtYWtlciByZW1haW5zIHdyb25nLgoKTG9va2luZyBhdCBodHRwczovL2Nhbmlu
b3Nsb3Vjb3Mub3JnL2VuL2xhYnJhZG9yLWVuLyB0aGVyZSdzIGEgIkNPUkUgCkJPQVJEIFYyLjAi
IGFuZCBhICJCQVNFIEJPQVJEIE0gVjEuMCIuCgpBc3N1bWluZyB0aGUgdjIgaXMgbm90IHNvZnR3
YXJlLXJlbGV2YW50LCBzaG91bGRuJ3QgdGhlIE0gYmUgcmVmbGVjdGVkIAppbiB0aGUgY29tcGF0
aWJsZSBzdHJpbmc/IEZvciBleGFtcGxlLCAiY2FuaW5vcyxsYWJyYWRvci1jb3JlIiBhbmQgCiJj
YW5pbm9zLGxhYnJhZG9yLW0iPyBZb3UncmUgZnJlZSB0byB1c2UgLWJiLW0gb2YgY291cnNlLCBi
dXQgbm8gbmVlZCB0byAKY29weSBMZU1ha2VyIC1iYiBuYW1pbmcgZm9yIHlvdXIgYm9hcmQuIFdo
YXQgZG9lcyB5b3VyIFBDQiBzYXk/CgpBbHNvIG5vdGUgdGhhdCBvdGhlciByZWNlbnQgYmluZGlu
Z3MgaGF2ZSBiZWVuIHVzaW5nIGEgZGVzY3JpcHRpb24gCmF0dHJpYnV0ZSAtIG5vdCBzdXJlIHdo
ZXRoZXIgd2UgY2FuIGFwcGx5IHRoYXQgYSkgdG8gdGhlIFNvTSBhbmQgYikgdG8gCnRoZSBiYXNl
IGJvYXJkIGhlcmUuIFBsZWFzZSBjb21wYXJlIG90aGVyIGluLXRyZWUgYmluZGluZ3MuCgpSZWdh
cmRzLApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1h
eGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJm
ZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
