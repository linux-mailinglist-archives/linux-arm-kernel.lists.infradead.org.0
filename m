Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA629D4E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 19:24:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IJNtlId2vuJIrc3Rzk6oWHHs4WPsWntnU+SZ5w2sqxM=; b=kEt/pKVW5XSczX
	cmxVHP9JjmpEOzKg643yLs4qYwA7CWJyqRvU1GQfnc5G5kdrHCDx5tlnkESWqLf9KVsAkQFNfF3zU
	Z+CIdze7fF97IMOlil2dUftzIf/SP4wKbFwa0PPSLSk0VcBCcEkJsU4BpC9yi9G1PmDsx6Yeopjzh
	BCi+mypoBZHvBqMQVbeHV25A9zy6qQ9Dkat1fXIzUBGDOzoM5TailtkTQzYnZAiaMY6a2+iryYgjx
	dwqVBK8yGmRdHchH74kRmXe5DS4UrmbBnEinpwScbFdK6Aun/6bcLzPb6EVV9YUOJ9Io8czF9E+ft
	UKGUQ/y+13YrzAtn9Sqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2IjW-0000V7-Mm; Mon, 26 Aug 2019 17:24:47 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2IjJ-0000Tg-Fw
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 17:24:34 +0000
Received: by mail-pf1-x449.google.com with SMTP id v134so12615247pfc.18
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 10:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=nz19iB6O7MD55VWpcgtLqqSkXdFYuq6nGyq7F/0WrIk=;
 b=EWmh8RR8TDwyvtQH6+KLLSHkQrRuB4UlNmweuso9obCiyoej1nB4CsoTQ8ADQqL1HV
 qdai+6aGzNpS9cEcAn0Uub4Cm66DhYjBLbVpECqAQqp8NFpEbu8CLmRPu7jdg23OnNpR
 b3qmaoeJu5+h1qEUw6FtZVzM/RSkiE330HFPTmfS8lqY0v5hhJaDPn4oE1XztD2LrKM8
 BoLqBLgbU085dcK12Ao85oVrKw/PRiWJhPFLY+E0PyF2VNIbdjh9jPXFl23FS48BY1wN
 kw4tJtfhSpohqWhXMzZb5rABj6FxCLHtC+MrmCg8QqI1UCuf/tUen0Hmg1Gr7+JaWFyq
 UjEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=nz19iB6O7MD55VWpcgtLqqSkXdFYuq6nGyq7F/0WrIk=;
 b=djERN2L+HpZXRZTN4Ul2mvRXwevmGwiBcDQydYaTsgFYh7bj7EOJ88cDTlIr91yEfl
 JQYbVgsiq9Jb54x9tHeNcKJh6TjFdK6wrIcLKlA1cQXbS+zy/lU4liDkV5hHZNe/gGWy
 QUlVlxBvqlgAU1iIBOqN04o4bGHf1pxFQPpI9R2G4vsDpfFx3lxZJHEjXGUZeNeq0GXs
 mP65P2qQzIeEk5pTljEfqPvaZLbzDEUSfKZdzT3AmTzxqg6+glqCgV0GJ5Gtvj8+G9Rr
 cxjPeJq5p/9xrjl1ILbT2ZCLQk2uMa17F17zNP0yFh9gwa98x+/e40lVMjd0MDvQCV8f
 uo8Q==
X-Gm-Message-State: APjAAAWjbbmnFA46yMaapTi2XvySxNXmBLYkbbFA4RxaH1Z2+Ys2Fujv
 QubuTlsrzSovSKsxZKxc2m8jvkH+Hg==
X-Google-Smtp-Source: APXvYqz3hJNx1G6AXJVADXu73yv3MG81S0NwoASrbtOhTIu6INd15Z5sFydiOV6AWzxHYwDjNMk27EcZ/Tc=
X-Received: by 2002:a63:9e54:: with SMTP id r20mr2511425pgo.64.1566840268953; 
 Mon, 26 Aug 2019 10:24:28 -0700 (PDT)
Date: Mon, 26 Aug 2019 10:24:24 -0700
In-Reply-To: <20190822220915.8876-3-mathieu.poirier@linaro.org>
Message-Id: <20190826172424.61777-1-yabinc@google.com>
Mime-Version: 1.0
References: <20190822220915.8876-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: Re: [PATCH 2/2] coresight: Add barrier packet when moving offset
 forward
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, leo.yan@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_102433_557874_18165754 
X-CRM114-Status: UNSURE (   4.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: alexander.shishkin@linux.intel.com, Yabin Cui <yabinc@google.com>,
 linux-arm-kernel@lists.infradead.org, mike.leach@arm.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tested-by: Yabin Cui <yabinc@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
