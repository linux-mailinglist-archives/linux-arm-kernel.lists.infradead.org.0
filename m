Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9D6336D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:34:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c9zFOUhGEVYSijmJnXRnzHU9/4VzIqhg5Tt4TheQaWk=; b=PSoYELfOmRROiF
	qAdCw6LlPBoS/0v+dfPntItyKTTCMCsb4wC9FaPp/QkUGVvgqb5LiwccrPYNR5cjct4FtoVL4l5TB
	nrobgRlHHuoxZPOciwWLq1nVCOdLTCUagp0BxhfXhrtJ2dKM+v9NYJ/dS3rLAHVjakLIpoa9bkBBQ
	ZmmXC2zenOCcRdoiSjzF0vNOaw9p6vdQyXtldetPuf6X1tE9/LQEKNX1dTQhhbPt7WQTeXdBv6dg0
	h2uWQJ6m0qCmFQGVNOqMKUI0OlRk3K0QOyMAtJzoCdZ/8JeyXGEnJAWPw6lnJw1g+z5Gu0hZ4dXBq
	LbJpg5O0x2FMnRvlkUfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqqo-0004aX-H1; Mon, 03 Jun 2019 17:34:26 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqqg-0004a8-Vz
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 17:34:20 +0000
Received: by mail-lj1-x243.google.com with SMTP id t28so5908381lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 10:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1kkg/Wrx/aQd6ddwwlhEjkHOLsNlFpd9v8UQebNLuFg=;
 b=L7MAhPRo0DlsZ58ft1eUFjDddPM0Or0GoAnXwfsRjUx+Ahvu6jEFDR5KpXUh7vcPK5
 K2fKKNOx/Js5JtMMl0aXhOjwgph1I1iRFC9khgXxCP3CF5uLjeYYiPs/w5Q4eJfXuYO4
 +wc8TNbn+dH3gHLs/w/oTT/AmbehvGC3jgI/U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1kkg/Wrx/aQd6ddwwlhEjkHOLsNlFpd9v8UQebNLuFg=;
 b=VRs3X7GlaSVYdJSXW++fEXDKctb2rruKbw9bphu3tYoUigTJcMnCjz5m6A28vObcWG
 NM4D929lWB3BJgvzKZvTLswuzsysIpa4fwL04fXDBrrtYp6IqVammtNlcjOWh5p9fLgD
 0E9lOazYqSHsusK279T/yarXOrYN9RNGreRZsZjErdn/W+aVB1orBTslgtxnnp9LmGws
 COQWdRAfdZZBL4FvoS43bLSWWppUPLDCX3qExARkPGX3IBZiYzuj/3eqLFjcRX6iS0V4
 zkW8cIW28D9EUyYk9WPlI7Yos6TsurEtMJrO9Z5xonYod3AKtZ/ky5N2+T5Wu3EEHC/c
 zGDA==
X-Gm-Message-State: APjAAAXccswWZOi58Zoj0MRWtacu/LYghak++SCIudmJ7kdP5Na5QhEv
 NQcqFREXPd39rOJFGBpHzASpfYqB/9c=
X-Google-Smtp-Source: APXvYqxzbIgyHkGQw1AwdyYubWewd4Uh5GKVoWHct4hpH01D4kz/dJWzflOr7ZoeRo01CyFwxUMhEg==
X-Received: by 2002:a05:651c:112:: with SMTP id
 a18mr14570480ljb.115.1559583255656; 
 Mon, 03 Jun 2019 10:34:15 -0700 (PDT)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com.
 [209.85.167.49])
 by smtp.gmail.com with ESMTPSA id r26sm3238628lfa.62.2019.06.03.10.34.14
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 10:34:14 -0700 (PDT)
Received: by mail-lf1-f49.google.com with SMTP id a9so12839471lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 10:34:14 -0700 (PDT)
X-Received: by 2002:ac2:4565:: with SMTP id k5mr10894817lfm.170.1559583254471; 
 Mon, 03 Jun 2019 10:34:14 -0700 (PDT)
MIME-Version: 1.0
References: <1559575830-11941-1-git-send-email-Dave.Martin@arm.com>
In-Reply-To: <1559575830-11941-1-git-send-email-Dave.Martin@arm.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 3 Jun 2019 10:33:58 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiETzg3HGNmy1Wc+ZaduU=hKavakfnS3d4AkZ=J8N=1SQ@mail.gmail.com>
Message-ID: <CAHk-=wiETzg3HGNmy1Wc+ZaduU=hKavakfnS3d4AkZ=J8N=1SQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: Silence gcc warnings about arch ABI drift
To: Dave Martin <Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_103419_137993_F44CA5BE 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 8:30 AM Dave Martin <Dave.Martin@arm.com> wrote:
>
> From: Linus Torvalds <torvalds@linux-foundation.org>

That's the wrong author. I have no idea about the -Wno-psabi flag.

                 Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
