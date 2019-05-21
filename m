Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A32324D87
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 13:04:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IdSMXMVJeSbTQadC989zNrc3h/uK19ZY+XvKxsxUATM=; b=JwCTOskUO8CGXX
	1jdyey6KXTcDRjlGlTpyP6sMQmpuvdwXwW++XLXLn9ZGNszEdsWc2dJn9OBMdsGtpN6paMSuuPywz
	HZmba36WKVA/LR9CAGPgP5tUnQ2xpINsH01nFk9qvDL1KJyfnaAmIEm7j/BfUN20CJMj3cYz/lduc
	7xrJWnSNtUzDHh+/zgeNwiibqep7qkWtC3GjtZFuT0gjaFwklUAewdYBmGKtmcBMSQYRjMURVDNiA
	6ZedAUSyiiPagaKsZtWnpQ3hmhNrGzm/eH1MLYlOzCSf66IGjIpIbKEkCHlOoNwmr3l79vTHQ3RzG
	JuU9X/6RIw4NxhE7Qm/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2Z0-0005TT-0R; Tue, 21 May 2019 11:04:10 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2Ys-0005S2-T4
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 11:04:04 +0000
Received: by mail-io1-xd44.google.com with SMTP id b3so13514735iob.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 04:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=tVZ1tFnofzDOshXJ55p2YIxYyc5VRLW0cEuiG1ZNDek=;
 b=ihR4sLB+Kcp5BjrhDZHbUHYi2I33+G3zsEL7+TLDz8Y7qWAJ6TdjzbQk2F+OSvOM1A
 GLIa2qJAZhBQZ9VZwMjjj3E45vPjlkcUCpN6i/oYE7jp19uqCloRgvG1a6iAmErAWRgE
 Qebj/ChBVrQbBUZg0ohqVfL9DyqylRQYV9NQNal9pXz9TXgpd8sF8qjgc21GP7N6zHeG
 FYb1QS5bhZgssSibeUx/tIQkitHUx5vKhoE2slQG2BN9Wmt2paYn5C4O2aKpZelG1qwW
 AwPwcL8iGMce28BZ/P2CtfAQNd9d3mCbLhtcxCDemp2dZnA6XZEwzQ1NEAMpidVJjVuo
 6mtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tVZ1tFnofzDOshXJ55p2YIxYyc5VRLW0cEuiG1ZNDek=;
 b=bVfFotV+OopfDTcLZ8aymOjj59uui6enWs0+N1Z/k3ZmUKg1uYI05cmoURWptp2fwH
 fStTGGnRe1SYEAnKTCS77MZuFF3k8ryArfZQ4mCySPQrXhNQcx/wS8/BapSQn1Xx8vm8
 5dmFkisLfxV23J07qQHNSSmM55puxT0Xmwj3nxG1vosSuqGzNPDme5tTtXSIZ2Mtr+lp
 DOsew7NPy8CxP8HC4vR89OmXQSFYY4SqjKuPYtr4a3BjeVcpAEYMACtV+AQAme+BYun6
 K5yl5kLtE3qX0+J4qPTSnff+1thUku9pv0G++VFqefKy7UMV8wLF6m54bD+3gBLPxCSr
 OCng==
X-Gm-Message-State: APjAAAXQCzj3W64fsoHP1lAGUuWxR3ptXdvzwPBZfV8Omr8GmaAaIUhK
 hvRM7B+DW8Gwkr5+T2WKOeSexQ==
X-Google-Smtp-Source: APXvYqzdS1QKhqlxQQboe9Y8ZH8ImzRkyRKdPGltO8YHoy6eE3kbPG+Qdn9Y/EsptD5mGgIiV7tFqw==
X-Received: by 2002:a6b:da11:: with SMTP id x17mr1436692iob.78.1558436639911; 
 Tue, 21 May 2019 04:03:59 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id q24sm6851957ioh.31.2019.05.21.04.03.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 04:03:59 -0700 (PDT)
Subject: Re: [PATCH 1/8] net: qualcomm: rmnet: fix struct rmnet_map_header
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20190520135354.18628-1-elder@linaro.org>
 <20190520135354.18628-2-elder@linaro.org>
 <b0edef36555877350cfbab2248f8baac@codeaurora.org>
 <81fd1e01-b8e3-f86a-fcc9-2bcbc51bd679@linaro.org>
 <d90f8ccdc1f76f9166f269eb71a14f7f@codeaurora.org>
 <cd839826-639d-2419-0941-333055e26e37@linaro.org>
 <20190521030712.GY2085@tuxbook-pro>
From: Alex Elder <elder@linaro.org>
Message-ID: <25b1d768-d492-08a7-b1ab-d3d022b01bc9@linaro.org>
Date: Tue, 21 May 2019 06:03:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521030712.GY2085@tuxbook-pro>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_040402_951329_92D43726 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: syadagir@codeaurora.org, ejcaruso@google.com, arnd@arndb.de,
 netdev@vger.kernel.org, ilias.apalodimas@linaro.org,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, david.brown@linaro.org,
 agross@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>, davem@davemloft.net,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8yMC8xOSAxMDowNyBQTSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgo+IE9uIE1vbiAyMCBN
YXkgMTk6MzAgUERUIDIwMTksIEFsZXggRWxkZXIgd3JvdGU6Cj4gCj4+IE9uIDUvMjAvMTkgODoz
MiBQTSwgU3ViYXNoIEFiaGlub3YgS2FzaXZpc3dhbmF0aGFuIHdyb3RlOgo+Pj4+Cj4+Pj4gSWbC
oHlvdcKgYXJlwqB0ZWxsaW5nwqBtZcKgdGhhdMKgdGhlwqBjb21tYW5kL2RhdGHCoGZsYWfCoHJl
c2lkZXPCoGF0wqBiaXQKPj4+PiA3wqBvZsKgdGhlwqBmaXJzdMKgYnl0ZSzCoEnCoHdpbGzCoHVw
ZGF0ZcKgdGhlwqBmaWVsZMKgbWFza3PCoGluwqBhwqBsYXRlcgo+Pj4+IHBhdGNowqBpbsKgdGhp
c8Kgc2VyaWVzwqB0b8KgcmVmbGVjdMKgdGhhdC4KPj4+Pgo+Pj4KPj4+IEhpZ2hlcsKgb3JkZXLC
oGJpdMKgaXPCoENvbW1hbmTCoC/CoERhdGEuCj4+Cj4+IFNvIHdoYXQgdGhpcyBtZWFucyBpcyB0
aGF0IHRvIGdldCB0aGUgY29tbWFuZC9kYXRhIGJpdCB3ZSB1c2U6Cj4+Cj4+IAlmaXJzdF9ieXRl
ICYgMHg4MAo+Pgo+PiBJZiB0aGF0IGlzIGNvcnJlY3QgSSB3aWxsIHJlbW92ZSB0aGlzIHBhdGNo
IGZyb20gdGhlIHNlcmllcyBhbmQKPj4gd2lsbCB1cGRhdGUgdGhlIHN1YnNlcXVlbnQgcGF0Y2hl
cyBzbyBiaXQgNyBpcyB0aGUgY29tbWFuZCBiaXQsCj4+IGJpdCA2IGlzIHJlc2VydmVkLCBhbmQg
Yml0cyAwLTUgYXJlIHRoZSBwYWQgbGVuZ3RoLgo+Pgo+PiBJIHdpbGwgcG9zdCBhIHYyIG9mIHRo
ZSBzZXJpZXMgd2l0aCB0aGVzZSBjaGFuZ2VzLCBhbmQgd2lsbAo+PiBpbmNvcnBvcmF0ZSBCam9y
bidzICJSZXZpZXdlZC1ieSIuCj4+Cj4gCj4gQnV0IGRpZG4ndCB5b3Ugc2F5IHRoYXQgeW91ciB0
ZXN0aW5nIHNob3cgdGhhdCB0aGUgY3VycmVudCBiaXQgb3JkZXIgaXMKPiB3cm9uZz8KCkkgZGlk
IHNheSB0aGF0LCBidXQgaXQgc2VlbXMgSSBtYXkgaGF2ZSBiZWVuIG1pc2ludGVycHJldGluZwp3
aGF0IHRoZSBkb2N1bWVudGF0aW9uIHNhaWQsIG5hbWVseSB0aGF0ICJiaXQgMCIgaW4gdGhlIG5l
dHdvcmsKZGF0YSBzdHJlYW0gaXMgYWN0dWFsbHkgdGhlIGhpZ2gtb3JkZXIgYml0IGluIHRoZSBm
aXJzdCBieXRlLgoKSSBkaWQgZGVmaW5pdGVseSBzZWUgdGhhdCBiaXQgNyAoMHg4MCkgaW4gdGhl
IGZpcnN0IGJ5dGUgd2FzIHRoZQpvbmUgc2VsZWN0ZWQgYnkgdGhlICJjZF9iaXQiIEMgYml0LWZp
ZWxkIG9yaWdpbmFsbHksIGFuZCBJIGJlbGlldmVkCnRoYXQgd2FzIHdyb25nLgoKVGhlIG90aGVy
IHRoaW5nIEkgY2FuIHNheSBpcyB0aGF0IEkgbmV2ZXIgc2VlIHRoYXQgYml0IHNldCBpbiBteQp1
c2Ugb2YgdGhlIHJtbmV0IGRyaXZlciBmb3IgSVBBLiAgT24gdG9wIG9mIHRoYXQsIHRoZSBwYWRf
bGVuCnZhbHVlIGlzIDAuICBHaXZlbiB0aGF0LCBlaXRoZXIgYml0IG9yZGVyIHdvcmtzLCBiZWNh
dXNlIHRoZQp3aG9sZSBmaXJzdCBieXRlIGlzIDAgZWl0aGVyIHdheS4gIFNvIGl0IHR1cm5zIG91
dCB0aGUgdGVzdGluZwpJIGFtIGFibGUgdG8gZG8gaXMgbm90IGFkZXF1YXRlIHRvIHZlcmlmeSB0
aGUgY2hhbmdlLgoKSSBhbSBob3BpbmcgdGhhdCBTdWJhc2ggaGFzIGFuIGVudmlyb25tZW50IGlu
IHdoaWNoIFFNQVAKY29tbWFuZHMgKHdpdGggdGhlIGFwcHJvcHJpYXRlIGJpdCBzZXQpIGFyZSBh
Y3R1YWxseSB1c2VkLgoKSSdtIGdvaW5nIHRvIHdhaXQgYSBiaXQgZm9yIGhpbSB0byBjb25maXJt
IHRoYXQsIGJ1dCBhdCB0aGlzCnRpbWUgbXkgcGxhbiBpcyB0byBkbyBhcyBJIHNhaWQgYWJvdmUt
LXJlbW92ZSB0aGlzIHBhdGNoIGFuZAphZGp1c3QgdGhlIG9uZXMgdGhhdCBmb2xsb3cgYWNjb3Jk
aW5nbHkuCgoJCQkJCS1BbGV4Cgo+IEkgc3RpbGwgbGlrZSB0aGUgY2xlYW51cCwgaWYgbm90aGlu
ZyBlbHNlIGp1c3QgdG8gY2xhcmlmeSBhbmQgY2xlYXJseQo+IGRvY3VtZW50IHRoZSBhY3R1YWwg
Y29udGVudCBvZiB0aGlzIGhlYWRlci4KPiAKPiBSZWdhcmRzLAo+IEJqb3JuCj4gCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
