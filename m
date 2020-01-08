Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FA81349BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 18:48:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPVMYr/PN1M6+mnzgNikwOBaP9EGRI43ja8x1tpO6FU=; b=XcRIB8TUTHlzMq
	Mj0gyMlvCUK8qbbVbJk7ALGkONSuURuOgstm44NNt6EzPd+TwVsfQpycHDa2S6NRjDR9ZUfUnf0Pk
	OjaW8oK5AkzJvZq84UoSHJlKLgCgM0K3wC9JwnE8tVVnxD2ohXBm9swW4P1Kv7J6EeuKwnke7/bPz
	SdQ6OHinPTkXbudU+XwPKUa2kyWMd/uKfKSPs9sJ2TNn5MYzRl2nE3AUnQUSy5b/0kcTxiU2qTDN3
	vcDMV9Bs0EefdRjAzq/D9GKslAOkK0Jj8kakC/8lLao5GGEFQCjrn/U31+xH3H7imehBKE+0t3dyq
	JqiPSea48yXHHCDWJgKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipFRP-0008C6-Nq; Wed, 08 Jan 2020 17:48:23 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipFRH-0008AW-QK
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 17:48:17 +0000
Received: by mail-vk1-xa43.google.com with SMTP id c129so1198153vkh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 09:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6fjeBXfdA5v8j8/xbcj6l8Tou8rGGc9L+qfhjRz0QRI=;
 b=LTssbe7xKtfJVDgsmMn2w88kRfx17N272Mz1utTbhfsLCjMFjPKI/5jq1OVsGaqA/q
 XdMmhJqxW1e83ABFojZyXrW0egWKzCycXb0O62a+JoAHeY5Xx8k6d+4OXPTQq+lexwaq
 twnq+XxLCP5A58S4nIVyd5jdb6MYrvhrtWTf8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6fjeBXfdA5v8j8/xbcj6l8Tou8rGGc9L+qfhjRz0QRI=;
 b=Dnut927CIKrfPdpdZbOaN94ri0a4P8ohdApvQJE9cg1gEDHsKp6OKxu6YZedOc6zZE
 Ege2v4Cqb+QTFDX8cu6ZNiNEVHDcyMBCJG2IW4TwSZm1yjgN73z9rr7bXo2PNlPcdmnr
 WDRQ+B+a7Vw88rWfiMHKBl3JhDnyMfr9kbFvwd22NMxRh8/5pYwZOXQ5wMB2nskRXUnD
 VJjphPJChnI/qTvtlXcPzjg5uZJ69hSBkrDg4qCSZNaBaG/DpVPwhFD6OaqX8M/WrQIU
 Yjm9p+VIkYrm1zueyo8Z+xjBkHKy+cstYrs0QJWHiWHP+hD9a5Gruj+05FQiryovXKOd
 z9fA==
X-Gm-Message-State: APjAAAWPXQb+atMJE0+6xl+R9tXkapIxLDlfpunwCK6thCKljIlhN+9b
 FUdxZaJAFelJJKr1Z5YG4eYglVlCz8g=
X-Google-Smtp-Source: APXvYqys0SYtqg3DbDSVrrq6kVpAwEvAcn/XUAPvkdAGSvJbMDQOadpprYHUO0JEim1cfeel8JIzOg==
X-Received: by 2002:ac5:c1d4:: with SMTP id g20mr3778877vkk.83.1578505693611; 
 Wed, 08 Jan 2020 09:48:13 -0800 (PST)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com.
 [209.85.217.44])
 by smtp.gmail.com with ESMTPSA id 94sm906268uaw.5.2020.01.08.09.48.12
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jan 2020 09:48:12 -0800 (PST)
Received: by mail-vs1-f44.google.com with SMTP id b4so2393610vsa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 09:48:12 -0800 (PST)
X-Received: by 2002:a67:e342:: with SMTP id s2mr1091753vsm.198.1578505692418; 
 Wed, 08 Jan 2020 09:48:12 -0800 (PST)
MIME-Version: 1.0
References: <20200108092908.1.I3afd3535b65460e79f3976e9ebfa392a0dd75e01@changeid>
In-Reply-To: <20200108092908.1.I3afd3535b65460e79f3976e9ebfa392a0dd75e01@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 8 Jan 2020 09:48:00 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WFCjzRGv=8C-LU9O+fRi_C6E6zuyM7SyAX7CWx=wHnGw@mail.gmail.com>
Message-ID: <CAD=FV=WFCjzRGv=8C-LU9O+fRi_C6E6zuyM7SyAX7CWx=wHnGw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Use ABI name for recovery mode pin on
 veyron fievel/tiger
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_094815_877068_E49DFBD5 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Jan 8, 2020 at 9:29 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> The recovery mode pin is currently named 'REC_MODE_L', which is
> how the signal is called in the schematics. The Chrome OS ABI
> requires the pin to be named 'RECOVERY_SW_L', which is also how
> it is called on all other veyron devices. Rename the pin to match
> the ABI.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Another misnamed pin, I should have noticed when fixing the
> name of the write protect pin ...

...and I should have noticed when reviewing.  Sorry about that.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
