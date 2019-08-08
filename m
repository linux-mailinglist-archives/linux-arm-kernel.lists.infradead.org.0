Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C34485BA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 09:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=63capeqhhA06HPMSJfARWV/bHY9CJDWsaZVEdd23mow=; b=HCpZWG4Ep0LkGe
	px4fU1/PLCNcCM5s95Mz9CSUsud7Z4kwDgWBVZHz6OEXoeOYWWPQ5+Zf+BNus7QFXE43zmPwGQN5R
	nFg3m4FdSI1ATirvVMkWbWwW1WOzPODONWP+8f89OYHZwmT5tiFSjjB7cQBgyYah9sgMY/zBUdQNu
	plc3oAcuIkpSsfKFt6xlXyUwv+CIZZtO300sI4N7GEiOcirs4luVzSiNl+RmEon1b41H2HMMqDT5D
	lYQWs0CAiDlvZE/Lp2unXvsJMEmgj42/5eDU6Qdx0i/rU9LAamILt+lbX3Hgy3bwBXqf84+0oFoX7
	/+7WaAm9McsOHeUBbpbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvcvY-0003VP-Cq; Thu, 08 Aug 2019 07:33:36 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvcuq-0003C3-0O
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 07:32:53 +0000
Received: by mail-wm1-x342.google.com with SMTP id s15so1342902wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 00:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=cdeGr0ZxpYxqKAREv9bEF6Lm91cCQB0EI/1CSCmLaDM=;
 b=W6xhQGJMlLaAAbRWQ1WyaYi4nzW6FgHKCqeu16DMj3xQ9NcDv8miboXhZZvHZ+olQm
 SJYNhWb+65WGeIehcPPeiP5TF6NH7SXIQtvCXHpbyikuepwOJK5ptSd8GMuPEDOEQhxi
 eB0PteEAr5Z7sELHoQhZyM8jFbQARkLGZzbEuv1z6oB1RxdDjQB2F2Sg9V69Fw29prfg
 pGonXftshSo9cyF94m4j59zCMXqsUCPovyPGH1Vzj4Xf72eMZQNZpeMOJZoPXQJk8KqD
 /zXifkMFRXjGxwOqt9oe6Q1imyLZz4+0njOLivTbldf2+44apSNfJgrxN71Zyy/w7OUQ
 tWIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=cdeGr0ZxpYxqKAREv9bEF6Lm91cCQB0EI/1CSCmLaDM=;
 b=iVSsnuQFm1OSzMQO65wbwhkZQ0HsG6CgIEmDwMlgxKJU3xU7USvauAHekZLCJ4kXLh
 2ofbB/VYTXwSXEQy4/s159p9ImPawT4/VKX4OnqiDdVARV9VaxgXIFn6wQxdROsEvoIt
 tCDWx5uQTpqog+6GUb0A24PSS7iqsh/MUhx6ssVisVWfxrpQs3/k65rzsdA05WE7MywA
 kVhF6LaUiM5D7tshusONwg4UDW5bFY5owM4LC5idHP0zIkWMQIPLC6QKChjBq8bPgHIU
 KYHV7qFKjcXIWKCUiQog09AhBfF3KigUOkThSoEdx6wGjorF8d++6hRTFZLY+puWBw/I
 wIFw==
X-Gm-Message-State: APjAAAWtVmTngS58AZHvwc88fAC8McmD7IFbnxAhnG+1QZvxtdhal8k4
 Bq+Uy9zvraBiKMw4PXVHiwiSLilJLh0=
X-Google-Smtp-Source: APXvYqx/icXlgxHRHQn+sOev/u//ftapjI1TrAoW8rfx/t6xUgedYecR3Z9qwNPcmYzX3BSBTD1Dlg==
X-Received: by 2002:a05:600c:2243:: with SMTP id
 a3mr2497357wmm.83.1565249569173; 
 Thu, 08 Aug 2019 00:32:49 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id c9sm1548602wml.41.2019.08.08.00.32.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 08 Aug 2019 00:32:48 -0700 (PDT)
Date: Thu, 8 Aug 2019 08:32:47 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 3/3] mfd: aat2870: no need to check return value of
 debugfs_create functions
Message-ID: <20190808073247.GM4739@dell>
References: <20190706164722.18766-1-gregkh@linuxfoundation.org>
 <20190706164722.18766-3-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190706164722.18766-3-gregkh@linuxfoundation.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_003252_274001_A04E5128 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCAwNiBKdWwgMjAxOSwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgoKPiBXaGVuIGNh
bGxpbmcgZGVidWdmcyBmdW5jdGlvbnMsIHRoZXJlIGlzIG5vIG5lZWQgdG8gZXZlciBjaGVjayB0
aGUKPiByZXR1cm4gdmFsdWUuICBUaGUgZnVuY3Rpb24gY2FuIHdvcmsgb3Igbm90LCBidXQgdGhl
IGNvZGUgbG9naWMgc2hvdWxkCj4gbmV2ZXIgZG8gc29tZXRoaW5nIGRpZmZlcmVudCBiYXNlZCBv
biB0aGlzLgo+IAo+IENjOiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+IFNpZ25l
ZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+
Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL2FhdDI4NzAtY29yZS5jICB8IDEzICsrLS0tLS0tLS0tLS0K
PiAgaW5jbHVkZS9saW51eC9tZmQvYWF0Mjg3MC5oIHwgIDEgLQo+ICAyIGZpbGVzIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpBcHBsaWVkLCB0aGFua3MuCgotLSAK
TGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5h
cm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFy
bzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
