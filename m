Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 373FA1BAA78
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBpnlWJU5CqVzKZZvXfalqw+hSv+2J+E8U47EOmx1LY=; b=GJ1K9TFEbkgTw9
	TNXhUYoah+8HvO/E63JHSSnhHQlQbL/gtZfuXnBTa9hrMsGYCmGs6DuVc7iKwISQE+BIg0Jp0xVt7
	SzdNK7VUTBeasxZfLlQ/05Mvta+c8CBpZXwhNdamVAMlqC0ppxH0UqZj4ZqQVt4+x9pD+Riat7I6h
	8Cpacu7KeL6iKXL0Q2HUn2xaW1mV7zJp0XBtT3HOBXsx6WD/sWtNBt7XFWiWe9R/GSS9wwmlr4Wzu
	xs2NcTabWeKcfbHrZdBeRwiMHes7ws0TdjaxSUz0N1zuSuiEpErz5mXPji4W4ynFuIzWmsH9xitzo
	rQbHwnJ7eLF850edFgYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT70I-0000UH-Qu; Mon, 27 Apr 2020 16:53:10 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT707-0000T7-KB
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:53:00 +0000
Received: by mail-wm1-x343.google.com with SMTP id u127so417635wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 09:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=L+f5rXb1fm0ddPawdaHU5SqIUExIWo7ZaWY7+7ST/oQ=;
 b=qX0Zz/fnIDcCTmTrZNOvEAVu0G15kUG2va77BGRxQ+BmnBFWZsRrnaLHz5AJeDtNzy
 im1UlPKai40zbHFsTmlFjs0ZlJ8dSJxK5mwzZ+nAIEwEmIgCwcYm7RTGYxfXNXUnv7iT
 GvITdFyEQESb0fEeHG9nVNlC93iR5CJnTVdL0pJBSMI/cuHkO/7l0VAJaTkmAeFHzYYM
 zph00Gm2PW/XDw3Tg+sdx8+1m/6xFtHAP1MWzfbVvhm2Xbiz/TC41CE+rwGou+JPnFT8
 pd5dUPNqNOceRTLdcITOTJqqCb8zhCttUIrobwkSJqKbvweOrdCnityaPhTQz1J5bPDo
 cz+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=L+f5rXb1fm0ddPawdaHU5SqIUExIWo7ZaWY7+7ST/oQ=;
 b=c/MbU3RFw3LE0ITtLnnB2F1a4ze2Kvl5A7ffAQDYAxn07BbB9Xzsrq2pW9mmPkl8Yp
 CDc4lxEwYIg3BFZMNes5QJGDD9JAoNHbrWVE7D/5mmJoA48yOHoVZnDLqujM9Scdrnqu
 5XRpiIlOVIeA8QSKjcY/ngfLQ3RKejdHitW+myatrxWeUh3+egUhuQCD0EnE3Rce9+2K
 yoY9FU+TyMyAFTwxrQcblcusIV02aTmY0XRVEwIHCCsvRNj3ejsuwopNPOijrhlixzaz
 rPXw3WcZhGegTVWF4Hd8QEHd5ByZLA1CTf8lWuqV9znyCdAUw1ilE2SSCqUXHXfBNgFF
 +tdA==
X-Gm-Message-State: AGi0PubBgn4PnrfbqF2U+Div4HSJua0OCip1tfIBqo9HYT+CDw5CuOyz
 vdBGtkq0DtZFKJ4JF4ZjIBf2xQ==
X-Google-Smtp-Source: APiQypIg33MdzG1fsD4Vtx7fCSqJxX2k4oqiO4ZdOMqbRC/BCATKrNwRWvi691/BgqaV0F5UCCKSag==
X-Received: by 2002:a7b:c927:: with SMTP id h7mr417005wml.122.1588006377727;
 Mon, 27 Apr 2020 09:52:57 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id v16sm16085225wml.30.2020.04.27.09.52.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 09:52:57 -0700 (PDT)
Date: Mon, 27 Apr 2020 17:52:55 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 5/9] arm64: Add call_break_hook() to early_brk64() for
 early kgdb
Message-ID: <20200427165255.bjwkjobfzinzzlxb@holly.lan>
References: <20200421211447.193860-1-dianders@chromium.org>
 <20200421141234.v2.5.I22067ad43e77ddfd4b64c2d49030628480f9e8d9@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421141234.v2.5.I22067ad43e77ddfd4b64c2d49030628480f9e8d9@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_095259_671585_8F9C961F 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 bjorn.andersson@linaro.org, hpa@zytor.com, will@kernel.org, corbet@lwn.net,
 frowand.list@gmail.com, jinho lim <jordan.lim@samsung.com>, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 kgdb-bugreport@lists.sourceforge.net, Dave Martin <Dave.Martin@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, jslaby@suse.com,
 Alexios Zavras <alexios.zavras@intel.com>, bp@alien8.de, tglx@linutronix.de,
 mingo@redhat.com, Allison Randal <allison@lohutok.net>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 jason.wessel@windriver.com, Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 02:14:43PM -0700, Douglas Anderson wrote:
> In order to make early kgdb work properly we need early_brk64() to be
> able to call into it.  This is as easy as adding a call into
> call_break_hook() just like we do later in the normal brk_handler().
> 
> Once we do this we can let kgdb know that it can break into the
> debugger a little earlier (specifically when parsing early_param's).
> 
> NOTE: without this patch it turns out that arm64 can't do breakpoints
> even at dbg_late_init(), so if we decide something about this patch is
> wrong we might need to move dbg_late_init() a little later.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>

I haven't done any testing at this point (I'd hope to enable tests
for this in the test suite), however FWIW and just so you know I didn't
forget about this patch:

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
