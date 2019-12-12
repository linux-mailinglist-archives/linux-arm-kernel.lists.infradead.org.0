Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE9911CE96
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 14:41:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TnucYDTO6vHJPCP8Vk8qWfdH7TICux4k6AVTFUX3iV8=; b=SlSbxWfzmUu5GN
	uQNAlRyjDfEW1OGR0ymb3stwUaICn391+IoXVfUALvhnFiZpO23CPKtRlykRpn+y1Lrzknf/D7iUQ
	pHhoDyP+z/MD6It81rqMlVdqJxUb9m0FXPgC3jm2uyiq3kHbBnZvILxLkgPtuhefNGrUyVNql386X
	WP0g7cjwz7ZqdUkn7XNMdk4hd9gKRUpzWNS3HxRNvxRW9x5Qsasx1EjIGtB/TxSghVwkpNaI8wKOw
	fVFRR/lfX9An9qXGx3KII3DuVLq0eb62cWoSNpjPoKT9mjAttIt9CIqF0TlEEQthv+M98Wfe42APA
	NX6lYV/lqrxVZ1SJ8Klg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifOii-0006eC-3G; Thu, 12 Dec 2019 13:41:32 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifOiZ-0006d0-0U
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 13:41:24 +0000
Received: by mail-pl1-x641.google.com with SMTP id a17so615953pls.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 05:41:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axtens.net; s=google;
 h=from:to:subject:in-reply-to:references:date:message-id:mime-version;
 bh=K1dcdOatOeVeFsIQxT5aEB0ANkvhzz2V9qjht9zfLUs=;
 b=GdElbodEdxjlTrBwa3I6J+sEs4W2s8EoeCX3lxYPy4O5JSwTyZcODXGJSRA1xj4/Th
 5RtnvwUWSB2afNeAL6+3jSXcezJ6aTZ2Ul1yCG9FnmvdgLq0A/BabGqxJQXU4aLQibFm
 sZaLkJC5i3jZy2lEJbSUwiAQSB4z7dLoQktt4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=K1dcdOatOeVeFsIQxT5aEB0ANkvhzz2V9qjht9zfLUs=;
 b=l6o4xD0cYEpSimI3krUh79xcAz0otYrD4TN7Du9c6FC6rIuLqjH1X3pz4FDji2DXe4
 hc3559+UEjNVnGxJ7E8UFWqg+JJ8VHgXqckLFtzqt3SzbpyhFM1IthG0lJSd3oIIs5Wr
 LWy++IP72Nsb9SLszbjJXCbBJ2r6WekJFWV+tYr71ZJK+yrUYocJdOD7U40FjsiFgpFU
 2a0gspBvnxP7axSowcYzl9cI6MFwrHvdAfb3HZE8dt6vkcVbeIbjfcsbkrh5UJTXXDKX
 W0fOo3OQrphzNzH4sTyYGxM2rX+6HxC5tr7QKZTOgtOqQOgrAJfwyF5LGWy48j8xYeO4
 nrsA==
X-Gm-Message-State: APjAAAU2K3jI3yFkNch/DUt8LgoF6GDWijYpo3vU3GvuJ+0s3KPGCqs3
 19uuFxepBRjgvCtd/kw117OBnA==
X-Google-Smtp-Source: APXvYqzPs6Cbt1MwcGO7Ifn/65S78x+5CnY2vxScmtjpazHyalO6+YCcj2OzBuBrETruOG5iKaL2pw==
X-Received: by 2002:a17:902:9885:: with SMTP id
 s5mr9457771plp.217.1576158078207; 
 Thu, 12 Dec 2019 05:41:18 -0800 (PST)
Received: from localhost
 (2001-44b8-1113-6700-b116-2689-a4a9-76f8.static.ipv6.internode.on.net.
 [2001:44b8:1113:6700:b116:2689:a4a9:76f8])
 by smtp.gmail.com with ESMTPSA id i68sm7464966pfe.173.2019.12.12.05.41.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 05:41:17 -0800 (PST)
From: Daniel Axtens <dja@axtens.net>
To: Christophe Leroy <christophe.leroy@c-s.fr>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linuxppc-dev@lists.ozlabs.org, linux-s390@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kasan-dev@googlegroups.com,
 aneesh.kumar@linux.ibm.com, bsingharora@gmail.com
Subject: Re: [PATCH v2 4/4] powerpc: Book3S 64-bit "heavyweight" KASAN support
In-Reply-To: <414293e0-3b75-8e78-90d8-2c14182f3739@c-s.fr>
References: <20191210044714.27265-1-dja@axtens.net>
 <20191210044714.27265-5-dja@axtens.net>
 <414293e0-3b75-8e78-90d8-2c14182f3739@c-s.fr>
Date: Fri, 13 Dec 2019 00:41:14 +1100
Message-ID: <87tv65br0l.fsf@dja-thinkpad.axtens.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_054123_051122_23653C55 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christophe,

I think I've covered everything you've mentioned in the v3 I'm about to
send, except for:

>> +	/* mark early shadow region as RO and wipe */
>> +	pte = __pte(__pa(kasan_early_shadow_page) |
>> +		    pgprot_val(PAGE_KERNEL_RO) | _PAGE_PTE);
>
> Any reason for _PAGE_PTE being required here and not being included in 
> PAGE_KERNEL_RO ?

I'm not 100% sure quite what you mean here. I think you're asking: why
do we need to supply _PAGE_PTE here, shouldn't PAGE_KERNEL_RO set that
bit or cover that case?

_PAGE_PTE is defined by section 5.7.10.2 of Book III of ISA 3.0: bit 1
(linux bit 62) is 'Leaf (entry is a PTE)' I originally had this because
it was set in Balbir's original implementation, but the bit is also set
by pte_mkpte which is called in set_pte_at, so I also think it's right
to set it.

I don't know why it's not included in the permission classes; I suspect
it's because it's not conceptually a permission, it's set and cleared in
things like swp entry code.

Does that answer your question?

Regards,
Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
