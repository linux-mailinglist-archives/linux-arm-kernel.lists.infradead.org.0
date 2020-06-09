Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A17151F425A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 19:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZQXWZWKB3Y2UWc3oFE1Ruz8wmDhJpPjlsQlUDQoAO4=; b=Aj4WanVXnUL6l6
	CE7MLEqtUbxrNleQkSHx2xYAcRZFW+2NLMyaGACIaEqQyzUwrQO23WqCirvsGnHGJz7eNW3XjKiXH
	RYx92iDzYTv+M7BxQA5PmKF8UoY7OX07AZxjBlBt7ZB8YHdKO6ebT/O5rlA0uj/29huJ7aIWUqKfU
	YCtI0Dnq4ND2xA3jOEkpFfpNCccgzKhLJuPpVp9XoC3XDKhfEuWC0cbd1ur8bx8ZbryvA3kunz06G
	GwplbiWCyEw5NCbPO9/JODyDnNxFLWt/zW/N06ONqGzyI7fgZA4qNo7st39DXVRDXPUjzQ43mjJ2l
	zugmKLeKXFvedKa4HfcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jii6f-0004Bu-Sm; Tue, 09 Jun 2020 17:32:13 +0000
Received: from mail-il1-f181.google.com ([209.85.166.181])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jii6Y-0004BU-GP; Tue, 09 Jun 2020 17:32:07 +0000
Received: by mail-il1-f181.google.com with SMTP id i1so19938774ils.11;
 Tue, 09 Jun 2020 10:32:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IGnSfBXB+3nfSv3N6F0fbjwPESQfDqrwP19nspwqC6U=;
 b=lqtlHrsKaB6ntFyWutP0aDQknwTNjN0p2xnrx5YbagDVSmSZEjcCvxJihGsSuBDW5L
 IGAsZhKtNxLwpFci+iKBhxZLwsvr9eu+l0EROI6AyIZVMpS8gxQUHBzlHJgzBPx7g8FA
 y+Luqlu4qscRS8/DqEgiCdeDeTqv9Zvi2FIMKSw/WXL/oJVCU6m8GwXqu1ZDxX1mD8iS
 ZKyGUDjsn0U+IXpAlos7DOzGMeLvDb0wHr8b+fZ5xNXhkbwLyqZZjLrivVWUjDF/hGaL
 +OgZxPi1wx/u0jLZvh6INqF2snM+sAWsrm8WcmfvDfYCSOUfqmfpZR81p5q9/5mJtpVr
 tHSQ==
X-Gm-Message-State: AOAM531dRWe7TKJ5LuoGbhhw+wufxzhIX7cTXeqOjS+nzUYl0/f+VhDA
 GQRXe39HHnjIP/ajUywn3w==
X-Google-Smtp-Source: ABdhPJyVUj4y5yOWIEZhHu2FOPrV9CJO6MI8LLU5aR4WVyN9icWLtu67T0oniravBER69+CId1YnxA==
X-Received: by 2002:a92:89cf:: with SMTP id w76mr20191903ilk.10.1591723925603; 
 Tue, 09 Jun 2020 10:32:05 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id l12sm640246ilj.8.2020.06.09.10.32.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 10:32:04 -0700 (PDT)
Received: (nullmailer pid 1119483 invoked by uid 1000);
 Tue, 09 Jun 2020 17:32:04 -0000
Date: Tue, 9 Jun 2020 11:32:04 -0600
From: Rob Herring <robh@kernel.org>
To: Neal Liu <neal.liu@mediatek.com>
Subject: Re: Add MediaTek MT6873 devapc driver
Message-ID: <20200609173204.GB1107294@bogus>
References: <1591698261-22639-1-git-send-email-neal.liu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591698261-22639-1-git-send-email-neal.liu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_103206_544165_6F92E4B3 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.181 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.181 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 06:24:19PM +0800, Neal Liu wrote:
> These patch series introduce a MediaTek MT6873 devapc driver.
> 
> MT6873 bus frabric provides TrustZone security support and data
> protection to prevent slaves from being accessed by unexpected
> masters.
> The security violations are logged and sent to the processor for
> further analysis or countermeasures.
> 
> Any occurrence of security violation would raise an interrupt, and
> it will be handled by devapc-mt6873 driver. The violation
> information is printed in order to find the murderer.

There's also a proposed driver with similar functionality[1]. Come up 
with a common solution.

Rob

[1] https://lore.kernel.org/linux-arm-kernel/20200128153806.7780-1-benjamin.gaignard@st.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
