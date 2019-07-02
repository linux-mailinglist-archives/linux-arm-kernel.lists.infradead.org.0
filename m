Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C895C78D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 05:07:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5PF/pUKsaM5T1W6xA+sCxWvQptmfJRDBheLU73XBWs=; b=aknFJy3Ujuo6Pq
	n/jQyoRg8uee2jfTWDfWKLrYxGEdRUAHUZp5ZwU0ScGRvgyb3te1fvLQqAbWHPE81s0G5oDJszcYE
	XZg7OI0zBFdvQ6jYf/lfilHCSn6V8TqeIvChA0SMHYSx+c95QTZrv3PVvVMQp9Qcgc5DYdMPXviFf
	wb3i6ahCUTURKlEtuDlq8HNVC8gSe9Byay1dVMuH8F24pa/f4rmqWd8v86Fuk26OJKBFiGPj+di2z
	oCml7jULj4w6GCvrj9z3pkHLl5uGBwNi57tRpKFs4qvyvQIEbVw3r9U2cMuzDc9o8mCSVgnQgu2Yq
	SjWYQM/W+pamtfFfyXzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi98z-0007rY-1i; Tue, 02 Jul 2019 03:07:45 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi98n-0007rF-HE
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 03:07:34 +0000
Received: by mail-pg1-x543.google.com with SMTP id m4so6953962pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 20:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :user-agent:message-id:content-transfer-encoding;
 bh=JEjj/PPo3yxC7A/OXv38wkR3+utyXU9OEcFxU+K+Oro=;
 b=Al5//5gOeoq+S2jUF4fWN70LRFW/gTgt2BAn2B0baRvM15+mvep+e5s4otLVXnFidS
 xBIE1sEHhvdBjGVQNKvZJxJgS3UdF4SDPQWO2bZ1qZ6vVx4wQIRlG/Q0PHTSe7GdH1CN
 9cMVFo4aSiPy+/dKIODZEmbH7MLbzA/dmpvmep3x/AmEilTks2v/Y+pWLjIn9LQ0PH9R
 y3GTlAck0dxdUgSPhIuZPl2WokIMtkaDzckYgT3LAIei69JVQwqvYIY52W+nZxNG0pqj
 e8Okec5QN1hZ74rwLSruZokYUZf+wjNVH5HrnYrKVrKxKFTKrXBjDp1EUoQxYsO+hF7X
 1bMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:user-agent:message-id:content-transfer-encoding;
 bh=JEjj/PPo3yxC7A/OXv38wkR3+utyXU9OEcFxU+K+Oro=;
 b=H5LgV6fz22d2tghN2jcQYuM/OrQUFLgm+jibDItjTVKTe641zwtYo9NNSaqRc4sN43
 apJ7AsyGYm7VxUKdJzOvb4u2R/fWaseW++W7nqqvY3DlY6cxFiq2jVuTtZmZ3UVqsCqk
 fRGiIwQG6V2uqX4Am9EBAyhDmGp9J87i4jP7l5Ym8ISWAhmHYhtn2lQ2SeOAhd08/8Pn
 uFaFScJxpRsOLwDGa00jAM464GFyAfi6GR256o9E/1b0Qa6I5+mgYVNip3/lI4O3We6P
 1qlrg3WBN20fl8mPLigEnm96dgCm6/iYIM6g4SKNmEICd/TSkKaNao492AUi5FfdDnWj
 JpKg==
X-Gm-Message-State: APjAAAXSfHenNwR5ggOlkifluudnGStR+qCcTEqqmGAVjop82kSbkDEf
 nlBFq3l8DJ1aUhJw2Tqh0UU=
X-Google-Smtp-Source: APXvYqxOVg0HFcmLKK0QMTMU/kWLAUMGqHvjW+x4ulftF7VETnHP5SSk6O+UdayEdNaJVHGmMdn0Lw==
X-Received: by 2002:a65:6102:: with SMTP id z2mr27238296pgu.194.1562036851675; 
 Mon, 01 Jul 2019 20:07:31 -0700 (PDT)
Received: from localhost ([175.45.73.101])
 by smtp.gmail.com with ESMTPSA id f11sm10274123pga.59.2019.07.01.20.07.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 20:07:30 -0700 (PDT)
Date: Tue, 02 Jul 2019 13:07:11 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: Re: [PATCH 1/3] arm64: mm: Add p?d_large() definitions
To: Steven Price <steven.price@arm.com>, Will Deacon <will@kernel.org>
References: <20190623094446.28722-1-npiggin@gmail.com>
 <20190623094446.28722-2-npiggin@gmail.com>
 <20190701092756.s4u5rdjr7gazvu66@willie-the-truck>
 <3d002af8-d8cd-f750-132e-12109e1e3039@arm.com>
 <20190701101510.qup3nd6vm6cbdgjv@willie-the-truck>
In-Reply-To: <20190701101510.qup3nd6vm6cbdgjv@willie-the-truck>
MIME-Version: 1.0
User-Agent: astroid/0.14.0 (https://github.com/astroidmail/astroid)
Message-Id: <1562036522.cz5nnz6ri2.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_200733_599761_5BBE9930 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-mm@kvack.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Will Deacon's on July 1, 2019 8:15 pm:
> On Mon, Jul 01, 2019 at 11:03:51AM +0100, Steven Price wrote:
>> On 01/07/2019 10:27, Will Deacon wrote:
>> > On Sun, Jun 23, 2019 at 07:44:44PM +1000, Nicholas Piggin wrote:
>> >> walk_page_range() is going to be allowed to walk page tables other than
>> >> those of user space. For this it needs to know when it has reached a
>> >> 'leaf' entry in the page tables. This information will be provided by the
>> >> p?d_large() functions/macros.
>> > 
>> > I can't remember whether or not I asked this before, but why not call
>> > this macro p?d_leaf() if that's what it's identifying? "Large" and "huge"
>> > are usually synonymous, so I find this naming needlessly confusing based
>> > on this patch in isolation.

Those page table macro names are horrible. Large, huge, leaf, wtf?
They could do with a sensible renaming. But this series just follows
naming that's alreay there on x86.

Thanks,
Nick

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
