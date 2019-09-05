Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D1DA9ACA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 08:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kTc2IhQWtTIy6fV6bWRXeYeFaw5R1WkHx5oPppj4KHQ=; b=ao9+i8QfP0Jz1w
	QNwC5POwLMqmGUySAtWyusp9HSNN0V+Kz4J6RgzIQVeg0+GsE4jUNpGWS/f1M4JyMlmQbayo2EQrI
	tJL3pstWQ/6YZy9SIyTR74M1ibabp1PFz/78cJDhUdR9+njOosN1M5QCwS+e4JmyojDCaPmGhHzZS
	WFVY6WJd4vaNXJNKJeTVgWKUFQSC7ZoDaOkYfhnQPhDkOc844lgB0yAoxST0EJwQCgVe2wqmqTjFa
	0FdyC1EoM9FR/VgQ7tu1JJig///IN2g0ECJNxPnNcNFedhHZpZRwQKgc+I2FC4+GaPkbwDFQ4dRd1
	H8LEvNSSrxeSS3GdVzRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5lU4-0001wF-2s; Thu, 05 Sep 2019 06:43:08 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5lTu-0001vr-4h
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 06:42:59 +0000
Received: by mail-wr1-x444.google.com with SMTP id 30so1218050wrk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 23:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=4FxT3sbg905x6neVVBFFY3spRc8+0YKGMTWU5uG6+h0=;
 b=wxlWx/qSbcPpE76utweI7A0cLy9DrjtSsoAqtfV6WPGO6arQeRwLYRCoyb13wSdY2Z
 655GB7phDY6TttcqOOFiP6ROfNmtwlxb0lskXM2I1LkhloZIEInNRhxotvbK4b/ogytV
 u/vcFc8JayRCtriCHPY3JfzCi3kAu7dCHIdpWcCi0NjBCfRdOiZ7AHIpZIdwvB6oUub7
 EipZ/dIakAO1jrc1+WsNumzS94ASiMIhnOLSohIQZd48G5lW93647zNwunwCnRJDPfF0
 dYJ4FK9cLboExNBjwJ4pYgppi671aLGIs6fh59Hu2j0H9RR/dllE7KO3vjx2D2dssxEe
 yrJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=4FxT3sbg905x6neVVBFFY3spRc8+0YKGMTWU5uG6+h0=;
 b=Axkj1sSIrMCisFGoscbQmz8059ZCasK+sE+2cSqz0kZ9Uep4tRWOYoDtQo1X4C/F8P
 U6iB86VYZ9hw4RLtvIMqMXUtkiG07ObuyHaku9or+1f/gTgj9P25kfHNjXx3XEhEo2ZO
 Mq/+PxCnBTEe8qAZT2x52go196tLWvj1MjmE9jvJ3s3bj8t7O7tGNXGr4pEq6HcBMle5
 MOJrXnuHYhXNwZQBsnnItJmaDI8jIr61AUjG+JMeEkhCDmXvEnhG69OfooGBbx1otwvA
 pwYYv3/kliQbIR4lP/RZY08mOEicXehx1P36p/j6VSZ+oEl3yGI085JADCPmkVUgtMl9
 eizw==
X-Gm-Message-State: APjAAAWkQAuPTRyDI3vtXTUcyVGUsgU1BIrA7ZamxHFZktwZFxHsna9C
 tNf3uVwBCQSE6rTauz2jImlxWg==
X-Google-Smtp-Source: APXvYqwvRbcTUQl24Kcx5vN7rlGOqv2utPQevH7gWXz+Y2nMcnBafBkxzETNfut6xVZQ0Q8Pr4WMgA==
X-Received: by 2002:adf:e881:: with SMTP id d1mr1133373wrm.301.1567665775928; 
 Wed, 04 Sep 2019 23:42:55 -0700 (PDT)
Received: from dell ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id f66sm2329533wmg.2.2019.09.04.23.42.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 04 Sep 2019 23:42:54 -0700 (PDT)
Date: Thu, 5 Sep 2019 07:42:53 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH 1/1] soc: qcom: geni: Provide parameter error checking
Message-ID: <20190905064253.GU26880@dell>
References: <20190903135052.13827-1-lee.jones@linaro.org>
 <20190904031922.GC574@tuxbook-pro> <20190904084554.GF26880@dell>
 <20190904182732.GE574@tuxbook-pro>
 <5d704c9f.1c69fb81.a1686.0eb3@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d704c9f.1c69fb81.a1686.0eb3@mx.google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_234258_195385_FBF07691 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, agross@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiA+IEJ1dCBpZiB0aGlzIGlzIHRoZSBvbmUgd2hhY2sgbGVmdCB0byBnZXQgdGhlIHRoaW5nIHRv
IGJvb3QgdGhlbiBJIHRoaW5rCj4gPiB3ZSBzaG91bGQgbWVyZ2UgaXQuCj4gCj4gQWdyZWVkLgoK
VGhhbmtzIFN0ZXBoZW4uCgpVbmxlc3MgeW91IGd1eXMgc2NyZWFtIGxvdWRseSwgSSdtIGdvaW5n
IHRvIGNvbnZlcnQgdGhlc2UgdG8gQWNrcy4KCklmIHlvdSBzY3JlYW0gc29mdGx5LCBJIGNhbiBj
b252ZXJ0IHRoZSB0byBSZXZpZXdlZC1ieXMuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxp
bmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBz
b2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwg
QmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
