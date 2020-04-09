Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2761A3979
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 20:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wqxz48yjT5VdMjUS0s9EgT+Od5S7b9+1DEHtEjMSR6s=; b=WSuhsQrHirDP7h
	Bn7s20VMyNVbEosj+NIW7/nUpMOMvmXNf/k8hgZiyW+CLeHf7qHvHFPXRHt27UlUOuvYWnFU0x7ce
	IamS9ec8ezNYjUVFe9OpQQclvnXXuS5ReBEACkbNbC4YgVZV1jp7nl67lrsbV0+K6GveJNRNLnVqT
	ToQSaaJndCOHuAxxf21NN+0UTQGMWE9LRpiGu2M6/Z8GEdeavjY72qGOWECUq2m/yPKCcCv4/q/WN
	WuG84kWW9PvSKMealA+PhH7Xh/dWzOZYuzgnbpmX/tadsifOy85EAOC1f4WDxFOypnaITG596RyM6
	L3kxDGYX8ROUAQtmmKsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbTX-0006ks-JJ; Thu, 09 Apr 2020 18:00:27 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbTP-0006k5-QY
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 18:00:21 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ng8so1610917pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 11:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amacapital-net.20150623.gappssmtp.com; s=20150623;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=zmgHj370LBNKV1cbwyo1caCm3JQLWtu1rtTInvPHiUM=;
 b=tzNrLp6SmTl4zuvoJWbv/IhrraqC8y+wpruozs/0zZ2WxqUK+8LU0L9I4hzVj2ua9U
 KY4iUimjpe58mMHQ5aLQgiS86vHoYVT/MPfC/f04JDPoelZ7dXayZ2gxrJoZJFqWqlAW
 tyC5H1xGmGRb3Es0DTFD6S73K5nQgskuaNMbgkZqBFc2BUEe7mEjWpXrG4IMCVehJ+K9
 mV7IN/uS5qiJOsvVoX7uMjJXer1hGe247YoLfdMK4bapF4kUSj1XtqPwbXfUvPZqUfTw
 +FmtN9UGx2prFh+/QoNprDQvyAWYCBn4UgnDGGocPkf5wCqL2lbyaPVsgzPfXKK0MFtg
 Wb+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=zmgHj370LBNKV1cbwyo1caCm3JQLWtu1rtTInvPHiUM=;
 b=B3gcnBobKEPeVZcObudxFic4yiom/3sMbND/cwT5Mui5jyNbtPm8SSHX7fa7JVq7TM
 WzAFVo9Nd4cDuBupUKj9gTo7BLx8gOZmlskgaYoXE2QZWL5+ZlkNo0PcOANmxJG7YtMv
 vPjcX2WTdPwheI/BdGgNrFjkxVPf5RBzw4uWDhzFV0iSCbDB3tq5Jy646luh//KUDA47
 THyZyjKpBQWvlXqpocZipjv6nixKz8nbkMzdVHzldBP6V75TXdw2wFONWu/J1Cm+4GQF
 EBvrsUaHZrBasfniUpdW+J4hIe0bmTDSoEr/rcSHK8c+D8LoRa4IrASatTuQjmibVyr2
 poHg==
X-Gm-Message-State: AGi0PuYxBzYppLJhF3OLkixg8Lmu32O6ouNwUsw838Jk1zTopGIm0QL+
 N2j3YQTNewg2s4c6hc3X/78RSg==
X-Google-Smtp-Source: APiQypIyuBEG4mydIIZ8UiVlFa6tJQNZqilN3DYnHlSeONtErGyrPOPpHqhOZbnewz+YO15faSZe2w==
X-Received: by 2002:a17:902:ff14:: with SMTP id
 f20mr731344plj.206.1586455218768; 
 Thu, 09 Apr 2020 11:00:18 -0700 (PDT)
Received: from ?IPv6:2601:646:c200:1ef2:d3f:18b:ffcb:12f6?
 ([2601:646:c200:1ef2:d3f:18b:ffcb:12f6])
 by smtp.gmail.com with ESMTPSA id c3sm2461610pfa.160.2020.04.09.11.00.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2020 11:00:18 -0700 (PDT)
From: Andy Lutomirski <luto@amacapital.net>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v3 04/13] task_isolation: userspace hard isolation from
 kernel
Date: Thu, 9 Apr 2020 11:00:16 -0700
Message-Id: <915489BC-B2C9-4D47-A205-FC597FC68B98@amacapital.net>
References: <58995f108f1af4d59aa8ccd412cdff92711a9990.camel@marvell.com>
In-Reply-To: <58995f108f1af4d59aa8ccd412cdff92711a9990.camel@marvell.com>
To: Alex Belits <abelits@marvell.com>
X-Mailer: iPhone Mail (17E255)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_110019_928807_223F9A9C 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Prasun Kapoor <pkapoor@marvell.com>,
 "frederic@kernel.org" <frederic@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEFwciA5LCAyMDIwLCBhdCA4OjIxIEFNLCBBbGV4IEJlbGl0cyA8YWJlbGl0c0BtYXJ2
ZWxsLmNvbT4gd3JvdGU6Cj4gCj4g77u/VGhlIGV4aXN0aW5nIG5vaHpfZnVsbCBtb2RlIGlzIGRl
c2lnbmVkIGFzIGEgInNvZnQiIGlzb2xhdGlvbiBtb2RlCj4gdGhhdCBtYWtlcyB0cmFkZW9mZnMg
dG8gbWluaW1pemUgdXNlcnNwYWNlIGludGVycnVwdGlvbnMgd2hpbGUKPiBzdGlsbCBhdHRlbXB0
aW5nIHRvIGF2b2lkIG92ZXJoZWFkcyBpbiB0aGUga2VybmVsIGVudHJ5L2V4aXQgcGF0aCwKPiB0
byBwcm92aWRlIDEwMCUga2VybmVsIHNlbWFudGljcywgZXRjLgo+IAo+IEhvd2V2ZXIsIHNvbWUg
YXBwbGljYXRpb25zIHJlcXVpcmUgYSAiaGFyZCIgY29tbWl0bWVudCBmcm9tIHRoZQo+IGtlcm5l
bCB0byBhdm9pZCBpbnRlcnJ1cHRpb25zLCBpbiBwYXJ0aWN1bGFyIHVzZXJzcGFjZSBkZXZpY2Ug
ZHJpdmVyCj4gc3R5bGUgYXBwbGljYXRpb25zLCBzdWNoIGFzIGhpZ2gtc3BlZWQgbmV0d29ya2lu
ZyBjb2RlLgo+IAo+IFRoaXMgY2hhbmdlIGludHJvZHVjZXMgYSBmcmFtZXdvcmsgdG8gYWxsb3cg
YXBwbGljYXRpb25zCj4gdG8gZWxlY3QgdG8gaGF2ZSB0aGUgImhhcmQiIHNlbWFudGljcyBhcyBu
ZWVkZWQsIHNwZWNpZnlpbmcKPiBwcmN0bChQUl9UQVNLX0lTT0xBVElPTiwgUFJfVEFTS19JU09M
QVRJT05fRU5BQkxFKSB0byBkbyBzby4KPiAKPiBUaGUga2VybmVsIG11c3QgYmUgYnVpbHQgd2l0
aCB0aGUgbmV3IFRBU0tfSVNPTEFUSU9OIEtjb25maWcgZmxhZwo+IHRvIGVuYWJsZSB0aGlzIG1v
ZGUsIGFuZCB0aGUga2VybmVsIGJvb3RlZCB3aXRoIGFuIGFwcHJvcHJpYXRlCj4gImlzb2xjcHVz
PW5vaHosZG9tYWluLENQVUxJU1QiIGJvb3QgYXJndW1lbnQgdG8gZW5hYmxlCj4gbm9oel9mdWxs
IGFuZCBpc29sY3B1cy4gVGhlICJ0YXNrX2lzb2xhdGlvbiIgc3RhdGUgaXMgdGhlbiBpbmRpY2F0
ZWQKPiBieSBzZXR0aW5nIGEgbmV3IHRhc2sgc3RydWN0IGZpZWxkLCB0YXNrX2lzb2xhdGlvbl9m
bGFnLCB0byB0aGUKPiB2YWx1ZSBwYXNzZWQgYnkgcHJjdGwoKSwgYW5kIGFsc28gc2V0dGluZyBh
IFRJRl9UQVNLX0lTT0xBVElPTgo+IGJpdCBpbiB0aGUgdGhyZWFkX2luZm8gZmxhZ3MuIFdoZW4g
dGhlIGtlcm5lbCBpcyByZXR1cm5pbmcgdG8KPiB1c2Vyc3BhY2UgZnJvbSB0aGUgcHJjdGwoKSBj
YWxsIGFuZCBzZWVzIFRJRl9UQVNLX0lTT0xBVElPTiBzZXQsCj4gaXQgY2FsbHMgdGhlIG5ldyB0
YXNrX2lzb2xhdGlvbl9zdGFydCgpIHJvdXRpbmUgdG8gYXJyYW5nZSBmb3IKPiB0aGUgdGFzayB0
byBhdm9pZCBiZWluZyBpbnRlcnJ1cHRlZCBpbiB0aGUgZnV0dXJlLgo+IAo+IFdpdGggaW50ZXJy
dXB0cyBkaXNhYmxlZCwgdGFza19pc29sYXRpb25fc3RhcnQoKSBlbnN1cmVzIHRoYXQga2VybmVs
Cj4gc3Vic3lzdGVtcyB0aGF0IG1pZ2h0IGNhdXNlIGEgZnV0dXJlIGludGVycnVwdCBhcmUgcXVp
ZXNjZWQuIElmIGl0Cj4gZG9lc24ndCBzdWNjZWVkLCBpdCBhZGp1c3RzIHRoZSBzeXNjYWxsIHJl
dHVybiB2YWx1ZSB0byBpbmRpY2F0ZSB0aGF0Cj4gZmFjdCwgYW5kIHVzZXJzcGFjZSBjYW4gcmV0
cnkgYXMgZGVzaXJlZC4gSW4gYWRkaXRpb24gdG8gc3RvcHBpbmcKPiB0aGUgc2NoZWR1bGVyIHRp
Y2ssIHRoZSBjb2RlIHRha2VzIGFueSBhY3Rpb25zIHRoYXQgbWlnaHQgYXZvaWQKPiBhIGZ1dHVy
ZSBpbnRlcnJ1cHQgdG8gdGhlIGNvcmUsIHN1Y2ggYXMgYSB3b3JrZXIgdGhyZWFkIGJlaW5nCj4g
c2NoZWR1bGVkIHRoYXQgY291bGQgYmUgcXVpZXNjZWQgbm93IChlLmcuIHRoZSB2bXN0YXQgd29y
a2VyKQo+IG9yIGEgZnV0dXJlIElQSSB0byB0aGUgY29yZSB0byBjbGVhbiB1cCBzb21lIHN0YXRl
IHRoYXQgY291bGQgYmUKPiBjbGVhbmVkIHVwIG5vdyAoZS5nLiB0aGUgbW0gbHJ1IHBlci1jcHUg
Y2FjaGUpLgo+IAo+IE9uY2UgdGhlIHRhc2sgaGFzIHJldHVybmVkIHRvIHVzZXJzcGFjZSBhZnRl
ciBpc3N1aW5nIHRoZSBwcmN0bCgpLAo+IGlmIGl0IGVudGVycyB0aGUga2VybmVsIGFnYWluIHZp
YSBzeXN0ZW0gY2FsbCwgcGFnZSBmYXVsdCwgb3IgYW55Cj4gb3RoZXIgZXhjZXB0aW9uIG9yIGly
cSwgdGhlIGtlcm5lbCB3aWxsIGtpbGwgaXQgd2l0aCBTSUdLSUxMLgoKSSBjb3VsZCBlYXNpbHkg
aW1hZ2luZSBteXNlbGYgdXNpbmcgdGFzayBpc29sYXRpb24sIGJ1dCBub3Qgd2l0aCB0aGUgU0lH
S0lMTCBzZW1hbnRpY3MuIFNJR0tJTEwgY2F1c2VzIGRhdGEgbG9zcy4gUGxlYXNlIGF0IGxlYXN0
IGxldCB1c2VycyBjaG9vc2Ugd2hhdCBzaWduYWwgdG8gc2VuZC4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
