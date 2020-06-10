Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3321C1F5964
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 18:49:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HBZl98Zyv6NqJB4L6hcwZF7tpAA+TPwyhQuMjhelwZY=; b=qrwTvdwQk3Bij/MJGjUA42xalI
	we0HncoMSBZz0xMsoF3XFHeSGty6by1wr+KLsxxNtIpsY6wL7anJYMz8hD47HaqOp7IVZFcoHfH6p
	nEgWERH3Iutbch9KAItl1OjITCIkH4nvPlGwXUg0My115S8x6WjfuDtRwAYjyUTOi7sRPkNfMhMeq
	h2b03OWjBp4PPwh8SISZi9FlKborCYVTnjHZS53RVWeoNZ9vS8cBtuaWCVSMX4+IvUub+2D7TXEPX
	H3OefQ3OpQ7vWd/odLE2m3phO/o2eMv+jISeP31adSwJ7pDPDLkHOryzSJcckapQkCwTyz4Ih0KOr
	ZxLfFmzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj3uo-0003Fi-8E; Wed, 10 Jun 2020 16:49:26 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj3uc-0003FH-Eh
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 16:49:15 +0000
Received: by mail-pg1-x542.google.com with SMTP id d10so1226912pgn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 09:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=/cy/uIpKW9q7ihiRoimeihBOOfnT0c4u1MNl2d7+GgU=;
 b=WWwFjtH9a8SO0yZWqP+Grk6jS2UOUMFoSnTVKoZ/A0/0yM0uT1OjDYUwmivhAM7gqL
 Q46NjNQjmBWyIZnGZdV8bkSV8DuA8RylsNHY9srRF/ob90UNDUjTEvC79t35LIsVGtrM
 2IlY2r4d7n6RyOV7frM9sqlRS/mpKynKIZnNszzNBptiSaOJZPOULtFIwVEkWiEEuY+1
 rhja8xF7s1kDGWNeFmDEe6dfG9Cd0otxxIHSunwH4r3Ra+LfBi5OWRqkVnal80+wqlvM
 2VIxRftJmSj4cRsnWk0W7w2u+MAX+Iq2El18eNLKXtRuY+0udaFpjo8UGcyMnceTOIA/
 Xcqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/cy/uIpKW9q7ihiRoimeihBOOfnT0c4u1MNl2d7+GgU=;
 b=SW/kZCofqgneSyeLyGUWZmcsFKYtduqwgFIec2CUb5+k7BZMolltUfF3m6jNj2MAEW
 Cf49HB5+Tpq11u4VCmWBIZwz2lNDk6ZbTrg7+W3RzkZnSrnxM4JMJu5FQo7xHU0oDUEa
 YrQ1eMqa05/z1txC7Lc7GzJWNabR0dmD7tufA3M4dTXCPuiMZWzUwGyM4hE28JSOiW8y
 iCPujO8iiW8tRrPZbHMVdxaKP9GUkI4MebUfYyYKBtrfewuM7EqKUUoHBtlyKIlqTVfP
 fScx975k5AwUKtAKYyCUEnYBdX//4BK5MbhUugsMJ8YGMxb51hwOXUcwe3kuMjzdeyUy
 JqOw==
X-Gm-Message-State: AOAM533YmHC+mqLS3m57eJmUK02J2hsl01TEFhdk8Kk8Xz+M04NOD4Ai
 bWhR2YvdxRZbN8x9lx98mi7GSzj7
X-Google-Smtp-Source: ABdhPJxjaWyE5/Gb2mNlQCzDShZJ2mCUN/2tVx5a6+9AbIH+xrje4wbBiwivdj4mCq3lCs6Tvu5OTw==
X-Received: by 2002:a62:1692:: with SMTP id 140mr3664223pfw.168.1591807753421; 
 Wed, 10 Jun 2020 09:49:13 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id t201sm430222pfc.104.2020.06.10.09.49.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 09:49:12 -0700 (PDT)
Subject: Re: [PATCH v2 0/6] bmips: add BCM63xx power domain controller
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200609105244.4014823-1-noltari@gmail.com>
 <20200610163301.461160-1-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <a1c00227-275d-60e6-07e5-924b053aef27@gmail.com>
Date: Wed, 10 Jun 2020 09:49:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200610163301.461160-1-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_094914_493443_684C136F 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzEwLzIwMjAgOTozMiBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IEJDTTYzMTgsIEJDTTYzMjgsIEJDTTYzNjIgYW5kIEJDTTYzMjY4IFNvQ3MgaGF2ZSBhIHBvd2Vy
IGRvbWFpbiBjb250cm9sbGVyCj4gdG8gZW5hYmxlL2Rpc2FibGUgY2VydGFpbiBjb21wb25lbnRz
IGluIG9yZGVyIHRvIHNhdmUgcG93ZXIuCj4gCj4gdjI6IEludHJvZHVjZSBjaGFuZ2VzIHN1Z2dl
c3RlZCBieSBGbG9yaWFuOgo+ICAgLSBBZGQgc2VwYXJhdGUgWUFNTCBmaWxlIGZvciBkdC1iaW5k
aW5ncy4KPiAgIC0gQWRkIGJjbTYzeHggZm9sZGVyIGluIGRyaXZlcnMvc29jL2JjbS4KPiAgIC0g
VXBkYXRlIE1BSU5UQUlORVJTLgo+ICAgLSBBZGQgZHQtYmluZGluZ3MgaGVhZGVyIGZpbGVzLgo+
ICAgLSBBbHNvIGFkZCBCQ002MzI2OCBzdXBwb3J0LgoKVGhvbWFzLCBzaW5jZSBJIHR5cGljYWxs
eSBzZW5kIHB1bGwgcmVxdWVzdHMgdG8gc29jQGtlcm5lbC5vcmcgZm9yCmRyaXZlcnMvc29jL2Jj
bS8sIGRvIHlvdSB3YW50IG1lIHRvIHRha2UgdGhlIGZ1bGwgc2VyaWVzIGFuZCB1cGRhdHNlIHRv
CmRyaXZlcnMvc29jL2JjbS9iY202M3h4LyBpbiB0aGUgZnV0dXJlIGFzIHdlbGw/Ci0tIApGbG9y
aWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
