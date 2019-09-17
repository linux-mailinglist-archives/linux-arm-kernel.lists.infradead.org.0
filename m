Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F28B4EBE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 15:06:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o+NmHIbKliTkFyilFyNh5PQQGnhNMKNcTzI1tMCH9cc=; b=f5zn9bRlRNrv3560kO5JNQzJs
	rKV+fUbQV2dJ0i/p0ael40XR6sQ5CiBUNWQNhwsIZootVk89+0q+C67+mBHId48raKk4rngagJhCH
	IQ7OkBi/qM3U9v4Cqjvkh9KP5jHXoyP6+Chnma1/kDUBdHIMsIFZ9spP7vvbofJxu/w18fgB6TTUu
	Z3cLoByZxoi04aufhE1P7UAQ2+JDVrNKY+yvaOw1hDpn9HbVJPkGqoOHo20M1mh/f/BTeNDHCR+ah
	wfATm/0MyMWAwpEkXHD1Qh3Yw6guWjcugq+mM+WtH37At4lCOA34JeP9nW7cPLY1YEnoYd3HrQTZO
	BCW9aAOQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADBY-000899-6n; Tue, 17 Sep 2019 13:06:24 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADBG-00088N-6I
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 13:06:08 +0000
Received: by mail-pg1-x544.google.com with SMTP id x10so2004942pgi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 06:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WXjXRRZVUtfs/NBrDnZYybzMPZ6/z0w4LM5WT5/NCRQ=;
 b=omYgqw8vdfnj/BCBVa1dOTzudnQP5nkVtJFH3xIKULtQccr7vaMsLTP7PJXl9Q2zl3
 7D24zqIl32IA95y/AwPX+xT2g4nafqjDlKqfLWxr/+VyincN0GvtdSZpsPecKJzhwJ4L
 CADxDXeu2PDy9N69XBQxGxEM+3gU1iQNPQ9HAyJVzwC9lnvz8M6g7L4OggQqcKIzz0ux
 fmHTBVxd5RUs6ly2//g4N2DGKTobnrs7Nlv3MlriISjsPoXgwGNHY35Lq0sqb4kxBjD+
 7oE94QLYmWCIbkpJ0FrM60EtPxDoTuZPda3RiU5HaTf0E/H1N4mrmHqOeEFQcNBc3phG
 /38Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WXjXRRZVUtfs/NBrDnZYybzMPZ6/z0w4LM5WT5/NCRQ=;
 b=MwrWE6KzKDx6zodijVcgcTO3gTXP0MUxPP1lBUy5EzcZG5zm6V2sMKkv9xfMscTDDr
 Zzkzc8cRnEaNlvZR1lQaJZMvO4d7xCLw4Ju3HxSeO8EevkQf02R2e6wRh710MzCD4ujO
 Atra+dlVTOPDARB9hSHQGQ3lFgY6hTl6sg1/p0a6gNeI7orfophIDWD1j3pPZrWKUlvz
 JN2ywc3nEtUWPPR6DVqVxJYNMnhwMuGyKXZXwrO4//l4P7SiyxFmVtw3rBt+i/QVZuPy
 yN7jqDgYgHN+rEHMJAmG7W7VjxJUao/wNPKpblwABs/2RMH8tFBlMTPxg0135/OsJSSX
 z2ww==
X-Gm-Message-State: APjAAAWSAlJbWrTcHRRx1CCGg9rIFvhH9zoybhryXLB68L83xXDP8cVJ
 VRux/N0PXCvG9k1YtzI7nybQZVlC
X-Google-Smtp-Source: APXvYqxAxKAlWk/RgxHRu6VyLU4cD/6/OLBd2BUHkdqZBaygYNSzcKt+lb4z/NdiZOCfXU7nPVITJw==
X-Received: by 2002:a17:90a:3450:: with SMTP id
 o74mr4938289pjb.5.1568725564878; 
 Tue, 17 Sep 2019 06:06:04 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 v68sm4023845pfv.47.2019.09.17.06.06.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Sep 2019 06:06:02 -0700 (PDT)
Subject: Re: [PATCH 0/6] ARM, arm64: Remove arm_pm_restart()
To: Arnd Bergmann <arnd@arndb.de>, Thierry Reding <thierry.reding@gmail.com>
References: <20170130110512.6943-1-thierry.reding@gmail.com>
 <20190914152544.GA17499@roeck-us.net>
 <CAK8P3a3G_9EeK-Xp7ZeA0EN7WNzrL7AxoQcNZ8z-oe5NsTYW6g@mail.gmail.com>
 <056ccf5c-6c6c-090b-6ca1-ab666021db48@roeck-us.net>
 <20190916134920.GA18267@ulmo> <20190916154336.GA6628@roeck-us.net>
 <20190916155031.GE7488@ulmo>
 <CAK8P3a1EZi5apOm90B6YW2GzFXsirz5wk-D66daR20oj_TLXNg@mail.gmail.com>
 <20190916202809.GA42800@mithrandir>
 <CAK8P3a2y9OYL-pm38rcGvgzvjgErCUC1ckjVXhd3mb=YEXiD_g@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <d6507fae-d0a6-00f4-4259-4084b6a442d8@roeck-us.net>
Date: Tue, 17 Sep 2019 06:06:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2y9OYL-pm38rcGvgzvjgErCUC1ckjVXhd3mb=YEXiD_g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_060606_243722_69BA4812 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/17/19 12:01 AM, Arnd Bergmann wrote:
> On Mon, Sep 16, 2019 at 10:28 PM Thierry Reding
> <thierry.reding@gmail.com> wrote:
>>
>> All of the patches beyond the 6 in this set rely on the system reset and
>> power "framework". I don't think there was broad concensus on that idea
>> yet.
> 
> Ok, I see.
> 
>> If you think it's worth another try I'm happy to send the patches
>> out again.
> 
> Maybe do that after we pull the first set into arm-soc then. If
> we can reach consensus, I can merge them as a follow-up,
> either through the soc tree as a new subsystem or through
> the asm-generic tree as cross-architecture work.
> 

I'd suggest to keep the two patch sets separate, though, and apply
the 6 system reset patches either way.

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
