Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D35160777
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 01:14:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2Jk5DHNXjKJlcWqWESM8y2VgMhY0ZQjg6mWeZFVv4E=; b=R2C4J3jvKNbt0F
	+pCsXnpTO/fRDd+7vPMq5xq8EGfRaSpo1q7zqHAcO320NJHrMp8lyDrsOiE9HbGcGI9wWPlh2sqLu
	919ITgy364v0jO2UbYdELID1qfGQ+PRKHyUzYldaLBA8pZO6VtX1Ae7/sYTAJAQngfMtr8sGpOMhD
	WoXp3+1Xg8G03kN3qjI5miKuDAip4AcXYdDb+MjqQPV50B84uq9h5kHcq9Yvh9WheanzXebMgj0FO
	TNmrhSggwnU69nS6oJNIvqfNNNqAixEgxPBoc7QCLWSKY67BWlsP+FTgToxSyoRxJMCGRAuH0q3Pz
	njCW8pLmL6SKIRDtechQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3U3k-0002dA-HU; Mon, 17 Feb 2020 00:14:48 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3U3a-0002cI-3i
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 00:14:39 +0000
Received: by mail-lf1-x141.google.com with SMTP id f24so10533914lfh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 16:14:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+IGQ44b8ehFgo9r1oz6MUXO7lMciX3lsO+/mrOD8lKs=;
 b=wNohhz24KyweaPRjF/ZHHazpqKxyZNG6eY/v2jPjEqflMXmdDA87blQaYxRrP52OhY
 oJTM4/wtKG7H+a1O638elj6pNxgX47boYHKawJBnthqWtfiyVZ4wjeYuZUgaNoFf6tmj
 OHix6PBfxoL2v75rtEk7TggEjhdRlnRIJocJs3QyjXC4ZKEUJVV6f2w4afRH/JV620mr
 SiiSqZLcMoPYdi4oHPFYWVKg60WUqtCqSmOsPwK6qz2JQgU5S1H0YqmPMkMU76jDZTYn
 lkP33PSLavtDBMXgIIfm9y3nM9p61Zer7u46FZWlhNRGCPbRQQdDAH4XsABPtGnW60B8
 BE8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+IGQ44b8ehFgo9r1oz6MUXO7lMciX3lsO+/mrOD8lKs=;
 b=S9SODyxLQAumRu4CzD/SukCUj8UPYg/YsI+g+3HRNjnNSAEW8mzPVzVndKgxJG143B
 u7NLipPaOUoKr0uOrmjZlQ6TUODCxgP6dI+2DCWbmficUkuh9w8AHaSMJqcDpPvJDflU
 amzp6UrRsSLXPKxkYNe0Qj74zRDxNDHX3vpceeeTS+LxlQnr5eInYSpgZ6FGPf1/xX2e
 NT3LPrcHLLDWPrgotZjqrUXEBK7KvzVjL4hu4bU723Wrmxm3UMO0gG5VfFs7O2pRD1KC
 6X/BnJyoqK7M0lvVBJ47NRasxeyi99Oz6aDdMIs7F4cch8byHZG6yiUayd6wfM7jPubJ
 qHLQ==
X-Gm-Message-State: APjAAAUxzCT8Uq9z+tEmHsfQd3+e8PDF7T2X3nriNo26Mrc/53bG5n9u
 0hk3FjJnJ3z9/Dllz5wHJk2qN8fmqno6ExkYStVNTA==
X-Google-Smtp-Source: APXvYqzsIMSQIv73Gzmo6PpatlAiH1YXLjMsm2KELMYVI69mtO6l3/cej9L7YkzaEFTovPCBl/VZ0ymnuMu8PEaKD0Y=
X-Received: by 2002:ac2:5dc8:: with SMTP id x8mr6411681lfq.217.1581898475042; 
 Sun, 16 Feb 2020 16:14:35 -0800 (PST)
MIME-Version: 1.0
References: <20200210141324.21090-1-maz@kernel.org>
In-Reply-To: <20200210141324.21090-1-maz@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 17 Feb 2020 01:14:24 +0100
Message-ID: <CACRpkdYTpuONqYvhe2k7vpbBFRBbG6PVihzj8mKctpQiK4vXTQ@mail.gmail.com>
Subject: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_161438_236213_5FE8A703 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anders Berg <anders.berg@lsi.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@arm.linux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Quentin Perret <qperret@google.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 3:13 PM Marc Zyngier <maz@kernel.org> wrote:

> it has been a good prototype for the arm64 version,
> but it suffers a few problems:

Wittgenstein wrote that sometimes an intellectual exercise work like such
that you have to throw away the ladder after you climbed it. It often
happens in engineering.

It also echoes Fred Brooks Mythical Man-Month:
"In most projects, the first system built is barely usable....Hence plan to
throw one away; you will, anyhow."

> To reiterate: 32bit guest support for arm64 stays, of course. Only
> 32bit host goes.

That sounds more useful.

I won't miss it.
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
