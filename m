Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F994CD04
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 13:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PziRlSWZdirb1q46p/eCzTXm0Py1AtSMhTvOdA7xpTY=; b=KEU2rxHC+detGf
	1qOHsrO6chjguIGvTuxeRoyOxO/ZitUpM6BOcd9i7d7qUx/rL6kqJmK8RZDBlpl8xBde3mj5axCqw
	3TlmNXYByuCYPE6bMDOCYyy4FwZoFvW2Q7FHQ09lJ/WYIJ9paopxxFkDR0aKlV2xZf+H5Uj/q0NMl
	ferEemjvT9oXxi9TBG9C30rTtTyu7Wbr5qCl0VRPayChp5UcjW1h9zK3+iS2beKxjj9bJ0j7f9Ogz
	IUflqBSz15AirtcgtotNjg9ZvVpqdEWhcs2Gv38Q1tfreq0ZM2wBtyeZQ9Z9WxFvTkmlwRwI7IXNM
	EeB+sbbpDj3jffNaguDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdvPT-0008Sr-HI; Thu, 20 Jun 2019 11:39:19 +0000
Received: from mail-wr1-f52.google.com ([209.85.221.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdvPD-0008S9-0v
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 11:39:05 +0000
Received: by mail-wr1-f52.google.com with SMTP id m3so2704150wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 04:39:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=trRXLLHyis6AvlgnEySANQEBoGJgqpN6zwf2piWO27o=;
 b=mYS4EEdL+l+6OTGP3ltQpy0YZK8k2cEq1KHGmHrLRtWu/jN4/LHdww5wAN15ZT1JYn
 xzY+QRqpB6BfmR/ETKvuaxJK797FO3HxtVTsGuj8DswUlFEsfMJro2GeJn7kXiUITZW6
 yyHozXmfa0f5eeN11Y86Xg7Etew/DMNLqIfZFc18FMc82uXpqsYoId3xK/DGcFMKksvL
 gjho+YILR02leAIt0mziK/hvqL4f0OfrNk6y/GKTBsqDZOjsJEGcY2BgerKfSMZe4PwN
 TuIALVjtj4BUqnKWaG4A5cHCA4Lt8nKZqA+J36yYGAV9Egp8iKTu65MSSGuFnd/KLm3+
 QKfA==
X-Gm-Message-State: APjAAAWSJsTtD+N3TGvuFMi/1l63g0qR3wsz0/iBO56J8ONgTmyrSlsz
 PTOCn0Y2d20yedlYZTGludIYxvSZYeM=
X-Google-Smtp-Source: APXvYqxdeCsF4SekbEa5L2K2atxBBUp3jIOusAd4PtSB6TjbQL1gtxx/JbT0Vs9Sc4hlqnTGGz/Tiw==
X-Received: by 2002:adf:cd8c:: with SMTP id q12mr77757892wrj.103.1561030741150; 
 Thu, 20 Jun 2019 04:39:01 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:7822:aa18:a9d8:39ab?
 ([2001:b07:6468:f312:7822:aa18:a9d8:39ab])
 by smtp.gmail.com with ESMTPSA id x8sm4349824wmc.5.2019.06.20.04.38.59
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 04:39:00 -0700 (PDT)
Subject: Re: [GIT PULL] KVM/arm fixes for 5.2-rc6
To: Marc Zyngier <marc.zyngier@arm.com>, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?=
 <rkrcmar@redhat.com>
References: <20190620112301.138137-1-marc.zyngier@arm.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <685d31ae-b854-96f2-4bbe-5a863c291491@redhat.com>
Date: Thu, 20 Jun 2019 13:38:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190620112301.138137-1-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_043903_060939_5E1284FF 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Jones <drjones@redhat.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Julien Thierry <julien.thierry@arm.com>, kvmarm@lists.cs.columbia.edu,
 James Morse <james.morse@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/06/19 13:22, Marc Zyngier wrote:
>   git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-for-5.2-2

Pulled, thanks.

Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
