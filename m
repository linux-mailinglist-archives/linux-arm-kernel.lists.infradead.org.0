Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9BA3B7B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 16:47:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eun22Oaiigkm6xVwpknjV1t/kQ9kUtEa/g+LBXQgkjg=; b=mTYeo/a8W9vqT6
	hBPUkkLqTXBllDY8FWYGrsUAd30kFp6QoFoVtMWdmcynVWxNGL4qx4m3P7TECM9aKmsQzT/Q54hwY
	60puNHZVtFFE8XtcTD1KSAuQRP4o+CVxD/KIa+mQgFb5Xrim50MyLk85qyj/Glo0907f+Cguj17RL
	H6/1F8k3J8/6usOTlxzW5WkAlyeIROoRSdbxK4Ph2opvmfG5QGx4+zB3FjJatTmyuWD6OuWkrrDm6
	YQdcL0ZhRaxV3Ggg+0vvpjQELyMPXWcj3cE2I9vPqKae2Og7kYcgRU7R3zSEouKCLUUjr8FXrS2XJ
	Av2vv0Bv/FmN99c9oM7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haLa2-0001V1-DQ; Mon, 10 Jun 2019 14:47:26 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haLZs-0001Ts-Mx
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 14:47:17 +0000
Received: by mail-pl1-x644.google.com with SMTP id e5so3744449pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 07:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :user-agent:message-id:content-transfer-encoding;
 bh=Wq53+njaY8Nizg87bnJv9I6awFz838NRdQghS0a7fkM=;
 b=X5g0JAvdV1k6T8yY6ZUvrcraWM4yMrG/lxJCK+nAqRLcZyfzQtXY4ZbYz6fOYHWy3n
 Ou8dcJ4J6pIL1UEocGoC4sPgamfUWIHesWmZ8UX6rEWSdzt9ISIcx9cBiIgBO1pLSbDQ
 bhOBx/V93amqxNh29DiYEna/vlDWwPNSH0HP8kuGzL0W2dnDnjJk1o+mR2xDI146xllb
 CGKw3KHTmadPXuq8gLrXsXWVk8oNjiQOOuOZXkERDlgP23OsxNnnrUkyJ5sqo3VO0K3v
 NviZJEwFJwnWh80oqJu8/n12fYX46vxiYKwSmmxCyHZAabHAJNThB0WoxME22CohL67N
 7IJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:user-agent:message-id:content-transfer-encoding;
 bh=Wq53+njaY8Nizg87bnJv9I6awFz838NRdQghS0a7fkM=;
 b=FaO7vam7XEjY/rsARYEQ4HqhGep0saFupnA00UmmSsb5sOgRElYO/V/iODfuCWRpho
 mAQy50w9qMe++CTM/0+Xzl/KwYoFi0ZqXrsbtK1G+WAMUeQMwpS1OVIfPpQ5YRhTWk7h
 tmQZo+/CsI4P4F2DYBQdC7P1wVGj+6f+xqDHem2pez2ipD+KmKKP+4EBisntlX8Lrv4U
 G0pwn+LsgtCkTGLiaL0CkZNk+Xq+fe2snFA73B/0rbuhKRmpm1N222gEpKwoewtiDGBI
 xsE3qLc1iVUHHvpwrXv+pok0vCHnSzRTdc/nYRH7zOffy9LE18kJmIiziUS2QBvExYrG
 cCcg==
X-Gm-Message-State: APjAAAXo3Je0XoY4Co3EuDIOumnfCkZ9gBe4UZLS24WqcLPUqriOj83I
 jeetvKKfLJ+a9UlQtB0LsBVfeTOa
X-Google-Smtp-Source: APXvYqzO+K5a5izxxRmZJDOMMeEKbiwUXCm3sWfTX0ai2WfHFHXOFTxBzy4ayjR/yFM/5mp8uqkfJw==
X-Received: by 2002:a17:902:8f81:: with SMTP id
 z1mr4934200plo.290.1560178036097; 
 Mon, 10 Jun 2019 07:47:16 -0700 (PDT)
Received: from localhost (60-241-56-246.tpgi.com.au. [60.241.56.246])
 by smtp.gmail.com with ESMTPSA id p68sm4145337pfb.80.2019.06.10.07.47.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 07:47:15 -0700 (PDT)
Date: Tue, 11 Jun 2019 00:44:49 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 4/4] mm/vmalloc: Hugepage vmalloc mappings
To: Mark Rutland <mark.rutland@arm.com>
References: <20190610043838.27916-1-npiggin@gmail.com>
 <20190610043838.27916-4-npiggin@gmail.com>
 <20190610141036.GA16989@lakrids.cambridge.arm.com>
In-Reply-To: <20190610141036.GA16989@lakrids.cambridge.arm.com>
MIME-Version: 1.0
User-Agent: astroid/0.14.0 (https://github.com/astroidmail/astroid)
Message-Id: <1560177786.t6c5cn5hw4.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_074716_778096_CE51A658 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mm@kvack.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mark Rutland's on June 11, 2019 12:10 am:
> Hi,
> 
> On Mon, Jun 10, 2019 at 02:38:38PM +1000, Nicholas Piggin wrote:
>> For platforms that define HAVE_ARCH_HUGE_VMAP, have vmap allow vmalloc to
>> allocate huge pages and map them
>> 
>> This brings dTLB misses for linux kernel tree `git diff` from 45,000 to
>> 8,000 on a Kaby Lake KVM guest with 8MB dentry hash and mitigations=off
>> (performance is in the noise, under 1% difference, page tables are likely
>> to be well cached for this workload). Similar numbers are seen on POWER9.
> 
> Do you happen to know which vmalloc mappings these get used for in the
> above case? Where do we see vmalloc mappings that large?

Large module vmalloc could be subject to huge mappings.

> I'm worried as to how this would interact with the set_memory_*()
> functions, as on arm64 those can only operate on page-granular mappings.
> Those may need fixing up to handle huge mappings; certainly if the above
> is all for modules.

Good point, that looks like it would break on arm64 at least. I'll
work on it. We may have to make this opt in beyond HUGE_VMAP.

Thanks,
Nick

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
