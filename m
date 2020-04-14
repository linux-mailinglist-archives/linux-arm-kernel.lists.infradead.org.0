Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 059771A7AA7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 14:25:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4uwdHxnPBjhjNTovVmprcHr3q/BJZqv+q7S/ygSMXs=; b=IhFjlrlvUX9KP2
	m7N1h4ohpcGY9I+pPGcSbxVcwdiJBPef5lwARNm3aXVx02bEroHLG1Zyj2II4Nn71vvRHy1kghTiX
	PYJwAC3Dd8cW2IiVsU7AZ5mqleNgVcE7beZ+iB2fbU6hbifSy/0egwrPymiklf5eMQi30c1K3YxFq
	ca0tQ/+9OC7u3RWi5OU83nVZc1mLdO/ZiU+mrcuNn/+FSsxHxuVJ2kkHb2J13fxcE5L7ifdRc9e+q
	rUsdzihwLVGeKrJaZALgqG9xfzmvCXvoZxqUceGxQPLdCWd2CGZFJFzn4N9krq+smssNf8cpTXIqw
	bTEr9nlECOgBbrvoI9Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOKcm-0002W3-5N; Tue, 14 Apr 2020 12:25:08 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOKcX-0002VZ-VC
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 12:24:55 +0000
Received: by mail-pg1-x543.google.com with SMTP id i3so1902348pgk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 05:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :message-id:content-transfer-encoding;
 bh=Rb/je2Xt8A81/xIFagwzCqIYQq2/FJP34odIX+hqS1U=;
 b=UTY8X432PCL3xnyTGZfBuHl+0Bru8fmRiTRB3WNI37NEJ7KTMzoFLX2u03Uns6v3uq
 F/zxrSmFmkbGZUSIlNotinDSbHpNioo3BPibPY7Hq3u6abi0GiJHTsb44JDJWQtNBlCL
 vWKBwbGGopau7TdSdq4RHW5AYBcXX3ugO1gg/D9VurF5nr9DU9//Hc3tebF+AEXw7p23
 IjjZGeRtC+Y+5OKiYdSGb61HJWL626shxWK/InsgIDK/s0OVVuqFs8+Mx/Y7v6OWCPfA
 Y3tBiSH2mMbAHzyhVjdorRuJ5pwhgLWdYVX8ynemqDENLjjuLIWBi7zBSb9Y2MMRVhXc
 niCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:message-id:content-transfer-encoding;
 bh=Rb/je2Xt8A81/xIFagwzCqIYQq2/FJP34odIX+hqS1U=;
 b=mE3zT2UdGco4ofsAQCSnYYjXIk/qxp7wCyTFQo8QI89/7BQ5Kdkogv7a2vpj2T6z8W
 garB+TVnofxDgMfujB9UcfVW45xMre7aJwjFl0po9AIanddtiLrG4VSk+ZHh35ITk9SM
 JnWCAuexfqD4WNUeFNDP6UXaZg2kAjjsJSzcHDZVirmxtll88SJg/wf0XakxBh2Gmv1c
 qUWaZnABSFdbbbLkQHZOAm+Tn9IA6Cz4ODwEF8tHpz4OmhnAMNrcnmi3b+gUNUOBm04b
 m0m9ahSmEocj/ZlwymbWvrNeDJzGZUZ6J0WI9mAxN/nowsrjua/9o/JSusHEhyuvcXv4
 eL8Q==
X-Gm-Message-State: AGi0PubIPdaRr8ZnLhEYWOw7PUhtIU+WJY/DCHCZabnSQJXRDqkZwkur
 eufBE6JtOImO2MX03CNXEtY=
X-Google-Smtp-Source: APiQypKChJa2JAz01cF35C6aERv1vm8eZC5rnffnL1LIrhvrzG/AI0EVc0p0VH0u8Wat3QrbLfmOYQ==
X-Received: by 2002:a62:5e86:: with SMTP id
 s128mr23700777pfb.157.1586867092854; 
 Tue, 14 Apr 2020 05:24:52 -0700 (PDT)
Received: from localhost ([203.18.28.220])
 by smtp.gmail.com with ESMTPSA id p19sm1389150pfn.19.2020.04.14.05.24.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 05:24:52 -0700 (PDT)
Date: Tue, 14 Apr 2020 22:23:11 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH v2 0/4] huge vmalloc mappings
To: David Rientjes <rientjes@google.com>
References: <20200413125303.423864-1-npiggin@gmail.com>
 <alpine.DEB.2.21.2004131727150.260270@chino.kir.corp.google.com>
In-Reply-To: <alpine.DEB.2.21.2004131727150.260270@chino.kir.corp.google.com>
MIME-Version: 1.0
Message-Id: <1586866432.g0r7udmtjr.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_052454_024835_69D68FAD 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npiggin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Excerpts from David Rientjes's message of April 14, 2020 10:27 am:
> On Mon, 13 Apr 2020, Nicholas Piggin wrote:
> 
>> We can get a significant win with larger mappings for some of the big
>> global hashes.
>> 
>> Since RFC, relevant architectures have added p?d_leaf accessors so no
>> real arch changes required, and I changed it not to allocate huge
>> mappings for modules and a bunch of other fixes.
>> 
> 
> Hi Nicholas,
> 
> Any performance numbers to share besides the git diff in the last patch in 
> the series?  I'm wondering if anything from mmtests or lkp-tests makes 
> sense to try?

Hey, no I don't have any other tests I've run. Some of the networking
hashes do make use of it as well though, and might see a few % in
the right kind of workload. There's probably a bunch of other stuff
where it could help a little bit, looking through the tree, I just don't
have anything specific.

Thanks,
Nick

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
