Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5606721A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 17:14:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4Zm8thLULyO9QVGU+c8Ov96t7Nol/qKqD9K1kVit64=; b=dc+hEFYqi8Vz1r
	93RaXLhXsnkSVBTj5OjHIuw63xjkSJcwY+OS5KcyzPxVO8ECCHHXdm4abIxukD4qeeabbRBFmMOfs
	o+0Rt9NPq1wlHvONCH9L5NgOElM4o2ZqFtP9VWCdZXpetKhXY/4rnqB/knv/XuBzZC0yjlOJLdvdf
	UIRTA6lMroQOD0aZfIsgLnVmuPW+dlzWAlReyLGy8iB8j7HwiCRWIPYE++EOJCcLiMV9RHCmkVFzj
	qa24FBPriaxhN4lTrvNyUjzVsBblLI6m4mLrrAlCU0nLWBIq9FYgIy7MACF3XhtHZWirXnE1oSxui
	kU8FCkIcnU4ljiHrYDpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlxFI-0007V5-IX; Fri, 12 Jul 2019 15:14:00 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlxF3-0007UO-Ow
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 15:13:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1562944426; x=1594480426;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:mime-version: content-transfer-encoding;
 bh=6paSjuY09ejpoRwHJwgN56Jb7OGwcZrtkGDYZABihlQ=;
 b=uzxqpCIL5fSXM2A42M3qybZSx0ZJK4+TfmPo9CdTHg2sutIQ1ctoQCg3
 FcVmudRVICYf44eKStEd+Ffz2gxB3Urbz9oDyu3e+1JOBwnerX7r9sSWY
 76+x2u9cgmZiNulLJZNK/H6DO8r0LfS20Dq5Ftrk+zSCTb5OtItqFUDLm w=;
X-IronPort-AV: E=Sophos;i="5.62,483,1554768000"; d="scan'208";a="685177933"
Received: from sea3-co-svc-lb6-vlan2.sea.amazon.com (HELO
 email-inbound-relay-2c-2225282c.us-west-2.amazon.com) ([10.47.22.34])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 12 Jul 2019 15:13:41 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2c-2225282c.us-west-2.amazon.com (Postfix) with ESMTPS
 id 80BBAA2519; Fri, 12 Jul 2019 15:13:40 +0000 (UTC)
Received: from EX13D01EUB004.ant.amazon.com (10.43.166.180) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.243) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 12 Jul 2019 15:13:39 +0000
Received: from EX13D01EUB003.ant.amazon.com (10.43.166.248) by
 EX13D01EUB004.ant.amazon.com (10.43.166.180) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 12 Jul 2019 15:13:38 +0000
Received: from EX13D01EUB003.ant.amazon.com ([10.43.166.248]) by
 EX13D01EUB003.ant.amazon.com ([10.43.166.248]) with mapi id 15.00.1367.000;
 Fri, 12 Jul 2019 15:13:38 +0000
From: "Raslan, KarimAllah" <karahmed@amazon.de>
To: "will@kernel.org" <will@kernel.org>
Subject: Re: [PATCH] arm: Extend the check for RAM in /dev/mem
Thread-Topic: [PATCH] arm: Extend the check for RAM in /dev/mem
Thread-Index: AQHVODcIGfDHKrKqiE2jyO8cjDhCoqbHE70AgAAEl4A=
Date: Fri, 12 Jul 2019 15:13:38 +0000
Message-ID: <1562944417.1345.17.camel@amazon.de>
References: <1562883681-18659-1-git-send-email-karahmed@amazon.de>
 <20190712145711.mxmnuyn6kpv2dr7u@willie-the-truck>
In-Reply-To: <20190712145711.mxmnuyn6kpv2dr7u@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.164.55]
Content-ID: <CC75E5D1726FE342A05CE26978AF7023@amazon.com>
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_081346_114526_AFD0A4E7 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "anders.roxell@linaro.org" <anders.roxell@linaro.org>,
 "yuzhao@google.com" <yuzhao@google.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "info@metux.net" <info@metux.net>,
 "anshuman.khandual@arm.com" <anshuman.khandual@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "yaojun8558363@gmail.com" <yaojun8558363@gmail.com>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDE5LTA3LTEyIGF0IDE1OjU3ICswMTAwLCBXaWxsIERlYWNvbiB3cm90ZToNCj4g
T24gRnJpLCBKdWwgMTIsIDIwMTkgYXQgMTI6MjE6MjFBTSArMDIwMCwgS2FyaW1BbGxhaCBBaG1l
ZCB3cm90ZToNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9tbS9tbXUuYyBiL2Fy
Y2gvYXJtNjQvbW0vbW11LmMNCj4gPiBpbmRleCAzNjQ1ZjI5Li5jZGMzZThlIDEwMDY0NA0KPiA+
IC0tLSBhL2FyY2gvYXJtNjQvbW0vbW11LmMNCj4gPiArKysgYi9hcmNoL2FybTY0L21tL21tdS5j
DQo+ID4gQEAgLTc4LDcgKzc4LDcgQEAgdm9pZCBzZXRfc3dhcHBlcl9wZ2QocGdkX3QgKnBnZHAs
IHBnZF90IHBnZCkNCj4gPiAgcGdwcm90X3QgcGh5c19tZW1fYWNjZXNzX3Byb3Qoc3RydWN0IGZp
bGUgKmZpbGUsIHVuc2lnbmVkIGxvbmcgcGZuLA0KPiA+ICAJCQkgICAgICB1bnNpZ25lZCBsb25n
IHNpemUsIHBncHJvdF90IHZtYV9wcm90KQ0KPiA+ICB7DQo+ID4gLQlpZiAoIXBmbl92YWxpZChw
Zm4pKQ0KPiA+ICsJaWYgKCFtZW1ibG9ja19pc19tZW1vcnkoX19wZm5fdG9fcGh5cyhwZm4pKSkN
Cj4gDQo+IFRoaXMgbG9va3MgYnJva2VuIHRvIG1lLCBzaW5jZSBpdCB3aWxsIGVuZCB1cCByZXR1
cm5pbmcgJ3RydWUnIGZvciBub21hcA0KPiBtZW1vcnkgYW5kIHdlIHJlYWxseSBkb24ndCB3YW50
IHRvIG1hcCB0aGF0IHVzaW5nIHdyaXRlYmFjayBhdHRyaWJ1dGVzLg0KDQpUcnVlLCBJIHdpbGwg
Zml4IHRoaXMgYnkgdXNpbmfCoG1lbWJsb2NrX2lzX21hcF9tZW1vcnkgaW5zdGVhZC4gVGhhdCBz
YWlkLCBkbw0KeW91IGhhdmUgYW55IGNvbmNlcm5zIGFib3V0IHRoaXMgYXBwcm9hY2ggaW7CoGdl
bmVyYWw/DQoNCj4gDQo+IFdpbGwNCgoKCkFtYXpvbiBEZXZlbG9wbWVudCBDZW50ZXIgR2VybWFu
eSBHbWJICktyYXVzZW5zdHIuIDM4CjEwMTE3IEJlcmxpbgpHZXNjaGFlZnRzZnVlaHJ1bmc6IENo
cmlzdGlhbiBTY2hsYWVnZXIsIFJhbGYgSGVyYnJpY2gKRWluZ2V0cmFnZW4gYW0gQW10c2dlcmlj
aHQgQ2hhcmxvdHRlbmJ1cmcgdW50ZXIgSFJCIDE0OTE3MyBCClNpdHo6IEJlcmxpbgpVc3QtSUQ6
IERFIDI4OSAyMzcgODc5CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
