Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C09FF0DAA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 05:16:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XFdEjS87rGA2aS33vGHWcp+BhSNoWuZdGcLBP+GqwDg=; b=dS00DTQCCqF5xg
	Ixh21R4MYgr4/5VWBu5s0QtJ9vggffJTiUcbv8pQrFpNu5dfrZs+NZDZGlZpLPpLtme1FzAS/Lx0R
	Sdlg5o/zf1omfRtFvjggqHXeEhq73L5EroQ7NAPR6LMo72udETS+u/zPf5c6C5L8omEWdUHVxpZ1a
	cR0VHDZySSiuNDyYmuuaVEkP7nM0H6M3Xjr4afjs34ZEDhRMG1BWQfvqbmpnHddIr/tc1XTXVpNXh
	K7qJv3ab0kp+ObD7Bv3eu/6SaCfq57s9fLkiTqhsJDfZVpEqNb0UZZnj4aasuu3DdccnkfU90yEZA
	FEy5rrA47cqAcphHnEiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSCjx-0007kJ-GU; Wed, 06 Nov 2019 04:16:17 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSCjq-0007jc-Rn
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 04:16:12 +0000
Received: by mail-oi1-f195.google.com with SMTP id k2so19735317oij.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 20:16:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YyIz8f1e9UfiTAitqdpO0gSzcZ8qqT+hCle9bN35WzI=;
 b=oJQru6wkM93MdOuLulfwr8oeVHiGjtqNkZloyBQyDi+4AV5gZsOj2Fxt8DnZvoWe+k
 FsbDu3OnNzWPbX7D+EBEz8i58v3yqAqUOGQn65L83UlAYQcZzWBX9Jq3Vuo8Eczl8G7v
 d7G58Lk27nqpwXHXjJVXc87LAt7uXlGCz61EHQfhZVOnN3wGV9uZyD66VOE0ucw71ANv
 0KvhAxnQXjobyXzEwcCmjZIO8YatwMsFUC4unhwBQTJotrCMWRcmJvhalWpIohfwVZK6
 OR1b5AKpMAqR7S9YJtZ9vqMUmEb9MB4/aUjp7/miFUJgvX4A5Ikw3NKnpNJozoXFVkQW
 Hcog==
X-Gm-Message-State: APjAAAU+QoC0Qba1VXHZu+J4Wvg5UL3NZCGkrUkvEirljdhoqQnBQlaF
 IDNcbT3BgiZX2kYNt6QmiA==
X-Google-Smtp-Source: APXvYqx3I4HQVzBQc3zq/SLJYwhrOMbaEj1Kj7im68FUhkqovz+Jg6Aj3wFPbiVOYEEOavsrH0Th0A==
X-Received: by 2002:aca:6207:: with SMTP id w7mr407049oib.87.1573013770143;
 Tue, 05 Nov 2019 20:16:10 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 103sm3515081otn.63.2019.11.05.20.16.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 20:16:09 -0800 (PST)
Date: Tue, 5 Nov 2019 22:16:08 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH 1/4] dt-bindings: counter: Convert stm32 counter bindings
 to json-schema
Message-ID: <20191106041608.GA24747@bogus>
References: <20191031123040.26316-1-benjamin.gaignard@st.com>
 <20191031123040.26316-2-benjamin.gaignard@st.com>
 <20191106041023.GB5294@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106041023.GB5294@bogus>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_201610_900175_A8F2F126 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 alexandre.torgue@st.com, linux-pwm@vger.kernel.org, linux-iio@vger.kernel.org,
 u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, fabrice.gasnier@st.com,
 lee.jones@linaro.org, linux-stm32@st-md-mailman.stormreply.com,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 10:10:23PM -0600, Rob Herring wrote:
> On Thu, Oct 31, 2019 at 01:30:37PM +0100, Benjamin Gaignard wrote:
> > Convert the STM32 counter binding to DT schema format using json-schema
> 
> Probably this should all be 1 file instead.

Also, checkpatch reports trailing whitespace in several of your patches.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
