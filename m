Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BF91C2D04
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 16:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cW9waE88RQyp2lgFlqQp1s+QPYnl/pSMNt7gUFdgDlM=; b=H0SdQEKzrOeU5hN0rltahHm4D
	aZMAF9Ax4yI77ada0xrkO6X5FF3poyt8Zsl2VtZ9meX3amiDu+b7icIm+82fpClby48rR/26SvnWe
	046SWr2lceWkXCMcHCVXuAgo8FHBVo0bp6g3SzzRe6q4EwAIQc3BtPGfh6FxeQ0CwfKpvhGRM9cjb
	EzCx8imG6NO2nrkvJUppw1bwC+SjJjJf9EkAEBRLq9xWpHcnoHKqBCuX8EPFkJ87b7vF/CtL0kXLG
	fpaR/v77Zs5qEl2hGXD59l2Jb+s7v7tZdoyTl3+LLWrzcaTu4AqkMNXAYI6C4jHTMRFjoASpN+56w
	7QasQx7AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVFVC-0007wi-9d; Sun, 03 May 2020 14:21:54 +0000
Received: from smtp-fw-6002.amazon.com ([52.95.49.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVFV5-0007uD-3x
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 14:21:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1588515707; x=1620051707;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=ZxYVmPuuA2zr6UpwhDSq7R3lJgKncnOeJeAf3v7KJHY=;
 b=dbuF/wuH5/m767HU3x7ekZ/EPrK/Q1DucU0kZ2qyKczPifYbRpNn5YY+
 wiJ9GLMN0zmNcAbS5aNKeN51qZzX4guFWjF0YXtRQbjMXu6n4CSmdV44n
 GU9Jj1jMWUoMhH0/xL4semIKC8mnvr6KKbeeGcgGkirDEByTEY1fuq/Sn I=;
IronPort-SDR: 7qyAQDUnU+bcCnQFJvC2pIBx8dUR+S2UUtK7lgyQLm9YPKIfPF7m9JI3fBitvnA4A8Gd2obW0w
 G83Qk/vzbktA==
X-IronPort-AV: E=Sophos;i="5.73,347,1583193600"; d="scan'208";a="28326231"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2c-2225282c.us-west-2.amazon.com) ([10.43.8.6])
 by smtp-border-fw-out-6002.iad6.amazon.com with ESMTP;
 03 May 2020 14:21:28 +0000
Received: from EX13MTAUEA002.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2c-2225282c.us-west-2.amazon.com (Postfix) with ESMTPS
 id 1F696A25FD; Sun,  3 May 2020 14:21:23 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA002.ant.amazon.com (10.43.61.77) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Sun, 3 May 2020 14:21:22 +0000
Received: from [10.95.73.94] (10.43.161.34) by EX13D01EUB001.ant.amazon.com
 (10.43.166.194) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sun, 3 May
 2020 14:21:13 +0000
Subject: Re: [PATCH v6 1/2] dt-bindings: edac: al-mc-edac: Amazon's Annapurna
 Labs Memory Controller EDAC
To: Borislav Petkov <bp@alien8.de>, <robh+dt@kernel.org>
References: <20200224134132.23924-1-talel@amazon.com>
 <20200224134132.23924-2-talel@amazon.com> <20200428110659.GA11272@zn.tnic>
From: "Shenhar, Talel" <talel@amazon.com>
Message-ID: <0b34f059-5abb-2e30-ec6e-6052efc91d91@amazon.com>
Date: Sun, 3 May 2020 17:21:08 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200428110659.GA11272@zn.tnic>
Content-Language: en-GB
X-Originating-IP: [10.43.161.34]
X-ClientProxiedBy: EX13D11UWC004.ant.amazon.com (10.43.162.101) To
 EX13D01EUB001.ant.amazon.com (10.43.166.194)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_072147_293849_C48FAD21 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.49.90 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, benh@kernel.crashing.org,
 hhhawa@amazon.com, gregkh@linuxfoundation.org, eitan@amazon.com,
 jonnyc@amazon.com, hanochu@amazon.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, dwmw@amazon.co.uk, catalin.marinas@arm.com,
 ronenk@amazon.com, mchehab@kernel.org, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDQvMjgvMjAyMCAyOjA2IFBNLCBCb3Jpc2xhdiBQZXRrb3Ygd3JvdGU6Cj4gT24gTW9uLCBG
ZWIgMjQsIDIwMjAgYXQgMDM6NDE6MzFQTSArMDIwMCwgVGFsZWwgU2hlbmhhciB3cm90ZToKPj4g
RG9jdW1lbnQgQW1hem9uJ3MgQW5uYXB1cm5hIExhYnMgTWVtb3J5IENvbnRyb2xsZXIgRURBQyBT
b0MgYmluZGluZy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogVGFsZWwgU2hlbmhhciA8dGFsZWxAYW1h
em9uLmNvbT4KPj4gUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4+
IC0tLQo+PiAgIC4uLi9iaW5kaW5ncy9lZGFjL2FtYXpvbixhbC1tYy1lZGFjLnlhbWwgICAgICB8
IDUyICsrKysrKysrKysrKysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgNTIgaW5zZXJ0aW9u
cygrKQo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZWRhYy9hbWF6b24sYWwtbWMtZWRhYy55YW1sCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZWRhYy9hbWF6b24sYWwtbWMtZWRhYy55YW1s
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2VkYWMvYW1hem9uLGFsLW1jLWVk
YWMueWFtbAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjIw
NTA1ZjM3YzlmOAo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9lZGFjL2FtYXpvbixhbC1tYy1lZGFjLnlhbWwKPj4gQEAgLTAsMCArMSw1
MiBAQAo+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5Cj4gV0FSTklO
RzogRFQgYmluZGluZyBkb2N1bWVudHMgc2hvdWxkIGJlIGxpY2Vuc2VkIChHUEwtMi4wLW9ubHkg
T1IgQlNELTItQ2xhdXNlKQo+ICMzNjogRklMRTogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2VkYWMvYW1hem9uLGFsLW1jLWVkYWMueWFtbDoxOgo+ICsjIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKPgo+IEhpIFJvYiwgc2hvdWxkIEkgbGlzdGVuIHRvIGNo
ZWNrcGF0Y2ggb3IgaWdub3JlIGl0PwoKVGhhbmsgeW91IEJvcmlzIGZvciB0aGUgcmV2aWV3LAoK
SSBub3cgc2VlIHRoaXMgcmVjZW50wqAgYWRkaXRpb24gaW4gY2hlY2twYXRjaCAtIApodHRwczov
L2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjAwMzA5MjE1MTUzLjM4ODI0LTEtbGt1bmRyYWtAdjMu
c2svCgpXaWxsIGFkZCB0aGF0IGxpY2Vuc2UgYXMgcGFydCBvZiB2Ny4KCj4KPiAtLQo+IFJlZ2Fy
ZHMvR3J1c3MsCj4gICAgICBCb3Jpcy4KPgo+IGh0dHBzOi8vcGVvcGxlLmtlcm5lbC5vcmcvdGds
eC9ub3Rlcy1hYm91dC1uZXRpcXVldHRlCgoKVGhhbmtzLAoKVGFsZWwuCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
