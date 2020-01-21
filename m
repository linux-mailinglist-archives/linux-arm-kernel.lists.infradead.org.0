Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D38A1439D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:51:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NTX+3K9cjw9Trgr7wEcndZYAUa032LqaQpKzuPYNht8=; b=DnD1r8Wg3VOSRn
	SKlwF+dk4YTU88x8WawJMpfDl0dK798NNKQs1Zoj0Xjy61p4c84RGYgYZM4oqE730Uqyk7IGwZWpz
	H3oSagajbCktFA1i3BNG4cvao9DQGAzPcnH+6yBfGrCXpkEA6TDf5sn0FqjWG/PtOtgnHwgeN6Pgr
	H/oBQ7hINyUND4wMGuOrPSVYXs9IaQAlB/OZeMxdTeB6+EOuA1K6oKIqPTAuC+L9RBueUFA4tAlym
	d7gR054E6soue+TE/J+Xp/fpoo1BqPpccEzNOzpzKJf+/hVLtqhWKRPHrhAeirHUfPdFYgNOy8rdQ
	kakmwoqcL/fKfGb5licg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqBu-00070P-31; Tue, 21 Jan 2020 09:51:22 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqBc-0006zU-HF
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 09:51:09 +0000
Received: by mail-wr1-x443.google.com with SMTP id c14so2379493wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 01:51:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZI0atwJ3s6X/StOieAcUPING7QLdESS+gVuKdESoeM8=;
 b=nUOfHjOz93uo00Ul9JjHIYcdpXRpD91FGhXKiI3DbvxV2BO2aWgkLtnZjTUxfmDW2I
 5wIjUPAD3CzImoTZMmLQ0tdqq7owN/2wAWIgtyc1Slp/tQJa7ONrJG/tX1IOk2iNx3ps
 zKOatbgNJTJ9Wm869mOIX92Ypbuo/2KCMP+cN2yU1ZftTtlMXsr31wiBQDonV/Y81i/C
 JlegtyqVzaVGNXZ5PRRX9N0NLM/lLz0bw9imTqJpvFskBb6jf4N7D4CntVRBplsZ8sof
 T4Zz0YfiHYja9NZzcrxHfnDGnqq+jK+w7KXA9sMdIN2/gSWsULahN+ko5SxdZQZBxuKP
 ouug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZI0atwJ3s6X/StOieAcUPING7QLdESS+gVuKdESoeM8=;
 b=cx+2xJBafdFG9qbsudNMfVdGJvLXAJWScqZdSDd5TWHEKcNAM+gEK8Ps7DbrGQ3+H8
 RKuleLVpwNA5GB1zTVT5V/aa3ntNMXrnAUoUSIDLSU+cEur81JUDzSG2qMGApFa9DFEf
 qghao8uhA9VBpAzcBKEal0ZsEnFUqw7u++jONGcJhkeY4owcRXjNq1kqgGBkL4pS4+He
 kKuCfTqWO8CiG1/L2sj0Pysg+qXtLuWfjuVMyF6BgvEzNR7rSuafMx1xXnOuzwKCZiDE
 odTHnGjwrZGYAFSN8v0sQDVaJ2RVbe2CDbGgrb1dRjdgHyfzUKm6akkTWe23whIhFyy6
 DWjg==
X-Gm-Message-State: APjAAAUMdZO97qSkm0rTqxJemQk3SYeEsJAhvrl5cpj2PHCmK8NDrgcT
 ayqgQL7BgP55dnjMU2PX8Wfu1ar5GcaBJzAko3oHR1+R9/M=
X-Google-Smtp-Source: APXvYqxAKCqSHMRYwdAc4+G8YAFujr0n0Lp3fm9R3/wAR6Pi012ThbAAQo6Ca5vAsTFhTl5nyeRAizZaA/Jf2zrnUbU=
X-Received: by 2002:a5d:530e:: with SMTP id e14mr4242678wrv.250.1579600262652; 
 Tue, 21 Jan 2020 01:51:02 -0800 (PST)
MIME-Version: 1.0
References: <cover.1578578535.git.michal.simek@xilinx.com>
In-Reply-To: <cover.1578578535.git.michal.simek@xilinx.com>
From: Michal Simek <monstr@monstr.eu>
Date: Tue, 21 Jan 2020 10:50:50 +0100
Message-ID: <CAHTX3dJZ+fsHKpen=wtw2g2fPWq1FZwKmvn5mWJpE7m3ZJSM7Q@mail.gmail.com>
Subject: Re: [PATCH 0/7] arm64: zynqmp: Enable iio-hwmon based on iio ina226
 driver with labels
To: linux-arm <linux-arm-kernel@lists.infradead.org>, git <git@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_015104_570772_4FF9F0E9 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, Jan Kiszka <jan.kiszka@siemens.com>,
 Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Harini Katakam <harini.katakam@xilinx.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xI10IDkuIDEuIDIwMjAgdiAxNTowMiBvZGVzw61sYXRlbCBNaWNoYWwgU2ltZWsgPG1pY2hhbC5z
aW1la0B4aWxpbnguY29tPiBuYXBzYWw6Cj4KPiBIaSwKPgo+IHRoZSBwYXRjaCAyYzNkMGM5ZmZk
MjQgKCJpaW86IGNvcmU6IEFkZCBvcHRpb25hbCBzeW1ib2xpYyBsYWJlbCB0byBkZXZpY2UgYXR0
cmlidXRlcyIpCj4gYWRkZWQgc3VwcG9ydCBmb3IgbGFiZWxsaW5nIElJTyBkZXZpY2VzIHRoYXQn
cyB3aHkgSSBjYW4gZW5hYmxlIGlpbyBiYXNlZAo+IGluYTIyNiBkcml2ZXIgd2l0aCBsYWJlbCBw
cm9wZXJ0eS4KPgo+IFRoYW5rcywKPiBNaWNoYWwKPgo+Cj4gTWljaGFsIFNpbWVrICg3KToKPiAg
IGFybTY0OiB6eW5xbXA6IEVuYWJsZSBpaW8taHdtb24gZm9yIGluYTIyNiBvbiB6Y3UxMDAKPiAg
IGFybTY0OiB6eW5xbXA6IEVuYWJsZSBpaW8taHdtb24gZm9yIGluYTIyNiBvbiB6Y3UxMTEKPiAg
IGFybTY0OiB6eW5xbXA6IEFkZCBsYWJlbCBwcm9wZXJ0eSB0byBhbGwgaW5hMjI2IG9uIHpjdTEx
MQo+ICAgYXJtNjQ6IHp5bnFtcDogRW5hYmxlIGlpby1od21vbiBmb3IgaW5hMjI2IG9uIHpjdTEw
Mgo+ICAgYXJtNjQ6IHp5bnFtcDogQWRkIGxhYmVsIHByb3BlcnR5IHRvIGFsbCBpbmEyMjYgb24g
emN1MTAyCj4gICBhcm02NDogenlucW1wOiBFbmFibGUgaWlvLWh3bW9uIGZvciBpbmEyMjYgb24g
emN1MTA2Cj4gICBhcm02NDogenlucW1wOiBBZGQgbGFiZWwgcHJvcGVydHkgdG8gYWxsIGluYTIy
NiBvbiB6Y3UxMDYKPgo+ICAuLi4vYm9vdC9kdHMveGlsaW54L3p5bnFtcC16Y3UxMDAtcmV2Qy5k
dHMgICAgfCAgIDggKy0KPiAgLi4uL2Jvb3QvZHRzL3hpbGlueC96eW5xbXAtemN1MTAyLXJldkEu
ZHRzICAgIHwgMTQ1ICsrKysrKysrKysrKysrKy0tLQo+ICAuLi4vYm9vdC9kdHMveGlsaW54L3p5
bnFtcC16Y3UxMDYtcmV2QS5kdHMgICAgfCAxNDUgKysrKysrKysrKysrKysrLS0tCj4gIC4uLi9i
b290L2R0cy94aWxpbngvenlucW1wLXpjdTExMS1yZXZBLmR0cyAgICB8IDExMyArKysrKysrKysr
KystLQo+ICA0IGZpbGVzIGNoYW5nZWQsIDM2MCBpbnNlcnRpb25zKCspLCA1MSBkZWxldGlvbnMo
LSkKPgo+IC0tCj4gMi4yNC4wCj4KCkFwcGxpZWQuCk0KCgotLSAKTWljaGFsIFNpbWVrLCBJbmcu
IChNLkVuZyksIE9wZW5QR1AgLT4gS2V5SUQ6IEZFM0QxRjkxCnc6IHd3dy5tb25zdHIuZXUgcDog
KzQyLTAtNzIxODQyODU0Ck1haW50YWluZXIgb2YgTGludXgga2VybmVsIC0gWGlsaW54IE1pY3Jv
YmxhemUKTWFpbnRhaW5lciBvZiBMaW51eCBrZXJuZWwgLSBYaWxpbnggWnlucSBBUk0gYW5kIFp5
bnFNUCBBUk02NCBTb0NzClUtQm9vdCBjdXN0b2RpYW4gLSBYaWxpbnggTWljcm9ibGF6ZS9aeW5x
L1p5bnFNUC9WZXJzYWwgU29DcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
