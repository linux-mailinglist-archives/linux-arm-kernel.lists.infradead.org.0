Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F641439D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:52:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G6CYCtF3Js+I148xDJusBRzhcbXTjisnGjULQVaAuX4=; b=u5pbEp35DbcdGC
	jpDvDFr8yecHlv0ozPWF4utr+bTNDg7A/4HgU5grl9FVOQ6sI10T3o+2rBD3JFbTBGM65Io6hGL3K
	Szkany2MEMOvwh8PHcJy3/cpxOlvRv12amLLXfnapGqu1nu+otspdHHnQ8ln5DPD5qPLbh4n/L0aK
	g9z3U9ufY0KB3qEpRnDfVe+ST4VJzUGEWttlFbfNK9Jjq0L2JHXLqXa8K7BEKZ1t/czREXzSRNYce
	i33g2yWwMU4f6uQHQLAYXvldOLjBLNEh6idTLqx1Hc3ElO0rzHqEZ/sWv4B7QG6pT03/Jui5pf0Q1
	dcSsJFSrEtNXcSIr3ISA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqCn-0007ZW-7h; Tue, 21 Jan 2020 09:52:17 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqCU-0007YB-PS
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 09:52:03 +0000
Received: by mail-wm1-x343.google.com with SMTP id p9so2219081wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 01:51:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gS+im0irDRkIpBOIxh0kBgop9pZ/8UFs7AEVh7IT1XM=;
 b=k5YqhzWsmtaevRKLBveGSXHbJ+jS0UE3AFL+ggoEmJDPmMezqWJu4cYFv87tGVqj1+
 dA+glBi8pVmrnGoBNcRJjao98GtsyfevEnG4moYXuiFut5o3a+Th2CTdKJYxEo/g28xR
 7lna9Hc4cOwnz9Ia8i7waKKBLTmZMbizpEEbu7DajHLURDWm/usKN3i+5Ot+2ukBGxVk
 L38OMFDC2sBrKu9d16AXkmAf/6dxx9Y1jKGVvSDqkUV7+BGKnRvpGc4UkWzokq3jU4HQ
 oG4HArkTB/Rg6zeZo5S71GD2HAph9pGjJZSUdwga24jTgxv7ZCFNtEjjbRn1kQmWyCpe
 Mw8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gS+im0irDRkIpBOIxh0kBgop9pZ/8UFs7AEVh7IT1XM=;
 b=N4IRLsIypFTy8AREdvrAbUhQM3ZQEzU4tqtPd22PIAG3YdWvFZZ3t6trR8HG8oYMJJ
 KHMeUyLtKZ0Zb10oMtVJZKuYfvdG2dp9/wmCi9O3Px8VPwwdqMB30K4ETQj5utGTQzdr
 P39Bk98UNa/Xqjb44a/W+XUF0MQanwOcR+IaYfOpZj18uj1ACmlexaBdbIV6W88fFyBm
 xa5/5TiKwIF3+2odZfwPH2DG1f9zKj4n4nW+OXTlL4qEYj8d5mquxTvTFuNvN+SQJWOq
 04Dx9fEfqwnLbh5fe4XU34xIVME2h0BXeFXhdYM5ihALkB+anaxw7FYWoRhvluh8z7F+
 rGNg==
X-Gm-Message-State: APjAAAWSJHoGI918eQ+En8febnEj7XcJ/2dakIy2qLsCHkCdkJK15xN4
 PCeLkhASHaUXwUY6kLEaeg8t5PE2XzICpZHYMHVHBDTk0cQ=
X-Google-Smtp-Source: APXvYqySBjrfH9msv3yjAVX+psBOoVmoNSdn5FqtxTiOBRmWLSLdQtHhiPdrzBOO1B3Jh6WxpM6urcMjW7D6vYtdHgA=
X-Received: by 2002:a1c:6406:: with SMTP id y6mr3604057wmb.144.1579600316779; 
 Tue, 21 Jan 2020 01:51:56 -0800 (PST)
MIME-Version: 1.0
References: <cover.1578577931.git.michal.simek@xilinx.com>
In-Reply-To: <cover.1578577931.git.michal.simek@xilinx.com>
From: Michal Simek <monstr@monstr.eu>
Date: Tue, 21 Jan 2020 10:51:45 +0100
Message-ID: <CAHTX3dL-rO9h=+5A2QS7r1aWi+bOdkEmZQHXAmGB=TnSJrVdeg@mail.gmail.com>
Subject: Re: [PATCH v2 0/8] arm64: zynqmp: Various DT fixes
To: linux-arm <linux-arm-kernel@lists.infradead.org>, git <git@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_015158_827610_A9EA784A 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

xI10IDkuIDEuIDIwMjAgdiAxNDo1MiBvZGVzw61sYXRlbCBNaWNoYWwgU2ltZWsgPG1pY2hhbC5z
aW1la0B4aWxpbnguY29tPiBuYXBzYWw6Cj4KPiBIaSwKPgo+IEkgYW0gc2VuZGluZyB2YXJpb3Vz
IERUIGZpeGVzIHdoaWNoIGhhdmUgYmVlbiBmb3VuZCBvdmVyIHRoZSB4aWxpbngKPiByZWxlYXNl
Lgo+IDEtMiBwYXRjaGVzIGFyZSBmaXhpbmcgcmVwb3J0ZWQgZGVzY3JpcHRpb24gaXNzdWVzCj4g
My04IHBhdGNoZXMgYXJlIGFjdHVhbCBmaXhlcy4KPgo+IFRoYW5rcywKPiBNaWNoYWwKPgo+IENo
YW5nZXMgaW4gdjI6Cj4gLSBBZGQgbWlzc2luZyBwYXRjaAo+IC0gQWRkIG1pc3NpbmcgcGF0Y2gK
Pgo+IE1pY2hhbCBTaW1layAoNyk6Cj4gICBhcm02NDogenlucW1wOiBVc2UgZXRoZXJuZXQtcGh5
IGFzIG5vZGUgbmFtZSBmb3IgZXRoZXJuZXQgcGh5cwo+ICAgYXJtNjQ6IHp5bnFtcDogUmVtb3Zl
IGFkZGl0aW9uIG51bWJlciBpbiBub2RlIG5hbWUKPiAgIGFybTY0OiB6eW5xbXA6IEZpeCBhZGRy
ZXNzIGZvciB0Y2E2NDE2X3U5NyBjaGlwIG9uIHpjdTEwNAo+ICAgYXJtNjQ6IHp5bnFtcDogVHVy
biBjb21tZW50IHRvIGdwaW8tbGluZS1uYW1lcwo+ICAgYXJtNjQ6IHp5bnFtcDogU2V0dXAgY2xv
Y2stb3V0cHV0LW5hbWVzIGZvciBzaTU3MCBjaGlwcwo+ICAgYXJtNjQ6IHp5bnFtcDogUmVtb3Zl
IGJyb2tlbi1jZCBmcm9tIHpjdTEwMC1yZXZDCj4gICBhcm02NDogenlucW1wOiBTZXR1cCBkZWZh
dWx0IG51bWJlciBvZiBjaGlwc2VsZWN0cyBmb3IgemN1MTAwCj4KPiBWZW5rYXRlc2ggWWFkYXYg
QWJiYXJhcHUgKDEpOgo+ICAgYXJtNjQ6IHp5bnFtcDogRml4IHRoZSBzaTU3MCBjbG9jayBmcmVx
dWVuY3kgb24gemN1MTExCj4KPiAgLi4uL2R0cy94aWxpbngvenlucW1wLXpjMTc1MS14bTAxNS1k
YzEuZHRzICAgIHwgIDIgKy0KPiAgLi4uL2R0cy94aWxpbngvenlucW1wLXpjMTc1MS14bTAxNi1k
YzIuZHRzICAgIHwgIDYgKy0tCj4gIC4uLi9kdHMveGlsaW54L3p5bnFtcC16YzE3NTEteG0wMTct
ZGMzLmR0cyAgICB8ICAyICstCj4gIC4uLi9kdHMveGlsaW54L3p5bnFtcC16YzE3NTEteG0wMTkt
ZGM1LmR0cyAgICB8ICAyICstCj4gIC4uLi9ib290L2R0cy94aWxpbngvenlucW1wLXpjdTEwMC1y
ZXZDLmR0cyAgICB8ICAzICstCj4gIC4uLi9ib290L2R0cy94aWxpbngvenlucW1wLXpjdTEwMi1y
ZXZBLmR0cyAgICB8IDQ3ICsrKysrLS0tLS0tLS0tLS0tLS0KPiAgLi4uL2Jvb3QvZHRzL3hpbGlu
eC96eW5xbXAtemN1MTAyLXJldkIuZHRzICAgIHwgIDQgKy0KPiAgLi4uL2Jvb3QvZHRzL3hpbGlu
eC96eW5xbXAtemN1MTA0LXJldkEuZHRzICAgIHwgIDYgKy0tCj4gIC4uLi9ib290L2R0cy94aWxp
bngvenlucW1wLXpjdTEwNi1yZXZBLmR0cyAgICB8ICA0ICstCj4gIC4uLi9ib290L2R0cy94aWxp
bngvenlucW1wLXpjdTExMS1yZXZBLmR0cyAgICB8ICA2ICsrLQo+ICAxMCBmaWxlcyBjaGFuZ2Vk
LCAzMiBpbnNlcnRpb25zKCspLCA1MCBkZWxldGlvbnMoLSkKPgo+IC0tCj4gMi4yNC4wCj4KCkFw
cGxpZWQgYWxsLgoKVGhhbmtzLApNaWNoYWwKCgotLSAKTWljaGFsIFNpbWVrLCBJbmcuIChNLkVu
ZyksIE9wZW5QR1AgLT4gS2V5SUQ6IEZFM0QxRjkxCnc6IHd3dy5tb25zdHIuZXUgcDogKzQyLTAt
NzIxODQyODU0Ck1haW50YWluZXIgb2YgTGludXgga2VybmVsIC0gWGlsaW54IE1pY3JvYmxhemUK
TWFpbnRhaW5lciBvZiBMaW51eCBrZXJuZWwgLSBYaWxpbnggWnlucSBBUk0gYW5kIFp5bnFNUCBB
Uk02NCBTb0NzClUtQm9vdCBjdXN0b2RpYW4gLSBYaWxpbnggTWljcm9ibGF6ZS9aeW5xL1p5bnFN
UC9WZXJzYWwgU29DcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
