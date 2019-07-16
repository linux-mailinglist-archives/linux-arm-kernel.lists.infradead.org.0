Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 041C66A13E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 06:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ux/iU+VIMBkP1qZBJx0JpA4alcbLAZCrKgjPYkeOh74=; b=q/Cj6bhMUB8M9B
	p98/Pe8/3uwO12IwJbMwG8cLgFvvozks3ow2p2kDTKNyGBUDA8xXvNyOhTJFe2BcxJy2DZQiqnfoS
	+8l5N2XuYA2KQc5hmyspKx9dR6pkMYWetIubaG7b7w+w4L0qotAuojLJXrd+csxWmVKsMtjVtMoyx
	Iff1r7F+AGLoWGYpHPST63+Wk64xRg3Fqo+7yHUwLXx4FXdntmRbjTtfYAYgNMLZjhTlvXwHTzOWa
	9GM3RnxY0KSoj1SO20Wo1DIumxaIqpIUGyoxb7enPHJG88vJkxS35IYI9jvISye+zF4kEf0eWR4wH
	1FG+BXBEHcc9JTmHxOcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnEqQ-0000kK-N9; Tue, 16 Jul 2019 04:13:38 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnEqF-0000jZ-4e
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 04:13:28 +0000
Received: by mail-yb1-xb44.google.com with SMTP id i14so7022091ybp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 21:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:subject:to:cc:references:openpgp:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KKcOLK0Pj5j6Y3pm/sSq/nV841duXzBCMR6JUm0phP8=;
 b=nqNSEK8ahmJLtrfN4mGe5uWwmPFJ/7ZmN+QmEH0a3h8JjHcmmZWKibZY4Jw32Qpb6x
 //3o9bUpJ4OgzhnQ/QEsQg9PYeauVUaca4fOFUgAg7Y8pcfbMhS9ZgCexNM13GIFjqqm
 1xhuirH/9zB1Qv/jUQIkh/ZeRPwFJDL57xCd3dPAaUDFimXMQNoI2ZNEY7A7GYfVSz3K
 dyLQV/Mx5wn6tJoOc+IV2EAh5OPz6eLitUj7BAgENeVEvrPcnqQaXiHxQbEIBiUjMocg
 h7OwOtc9is6+YvuuyRuPpqppOyR3onysH21/2dX3kdAv4OqxZ6NY4PkRyWX+xyj0paR0
 LHpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:subject:to:cc:references:openpgp
 :autocrypt:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=KKcOLK0Pj5j6Y3pm/sSq/nV841duXzBCMR6JUm0phP8=;
 b=LTA2ToaVdOXMtTdxnVHkRmAO4jFYlwheKA5j4si2pU+CAfzBCHU8Jsvhq3C3PxVE4i
 uwYjqU+0oNM7+weLbzb4pQsb9w3Mm+oYhsjILmdj9hvX0r1QfedPP44vF8FdT6U9UA1k
 uedlELtxU048o7sH5YgyA30DUeT2biy/uaYcmMr7Oy3a8A9iZTkXsDz7pVY7kKRAPu3d
 kc57ESami83EBdo4W2UQ6lEcRhLuwNDIRGORI/fUZ/BgMdBPcfyYB+Q1y/vVzavfoTev
 dS+le7SuWkNy9dwGN6n8IwIJGfwQOk0EBHLhH8I1GgbzUB1pVv8XrLqPV4YJ8Y+S1k/w
 Uk6A==
X-Gm-Message-State: APjAAAXdmXJBrj3p1yUvkTD6Q24gIwZmMPJkZPc2MD1RLO9XEgBr3egB
 vScwQCR0n5i5qB4TzaaYJw4=
X-Google-Smtp-Source: APXvYqzJytyvg97HkaCMtPls51uWFFWrbX9McCxj9NBTRCDd8b2zc0gANzQ+U/Ynx+UIGn5DMaL89w==
X-Received: by 2002:a25:ba11:: with SMTP id t17mr18194987ybg.24.1563250404840; 
 Mon, 15 Jul 2019 21:13:24 -0700 (PDT)
Received: from [192.168.1.74] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net.
 [75.58.59.55])
 by smtp.gmail.com with ESMTPSA id x195sm4882583ywx.57.2019.07.15.21.13.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 21:13:24 -0700 (PDT)
From: Sinan Kaya <Okaya@kernel.org>
X-Google-Original-From: Sinan Kaya <okaya@kernel.org>
Subject: Re: [PATCH] ARM64/irqchip: Make ACPI_IORT depend on PCI again
To: Sasha Levin <sashal@kernel.org>, marc.zyngier@arm.com,
 will.deacon@arm.com, julien.thierry@arm.com, catalin.marinas@arm.com
References: <20190716040441.12101-1-sashal@kernel.org>
Openpgp: preference=signencrypt
Autocrypt: addr=okaya@kernel.org; keydata=
 mQENBFrnOrUBCADGOL0kF21B6ogpOkuYvz6bUjO7NU99PKhXx1MfK/AzK+SFgxJF7dMluoF6
 uT47bU7zb7HqACH6itTgSSiJeSoq86jYoq5s4JOyaj0/18Hf3/YBah7AOuwk6LtV3EftQIhw
 9vXqCnBwP/nID6PQ685zl3vH68yzF6FVNwbDagxUz/gMiQh7scHvVCjiqkJ+qu/36JgtTYYw
 8lGWRcto6gr0eTF8Wd8f81wspmUHGsFdN/xPsZPKMw6/on9oOj3AidcR3P9EdLY4qQyjvcNC
 V9cL9b5I/Ud9ghPwW4QkM7uhYqQDyh3SwgEFudc+/RsDuxjVlg9CFnGhS0nPXR89SaQZABEB
 AAG0HVNpbmFuIEtheWEgPG9rYXlhQGtlcm5lbC5vcmc+iQFOBBMBCAA4FiEEYdOlMSE+a7/c
 ckrQvGF4I+4LAFcFAlztcAoCGwMFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AACgkQvGF4I+4L
 AFfidAf/VKHInxep0Z96iYkIq42432HTZUrxNzG9IWk4HN7c3vTJKv2W+b9pgvBF1SmkyQSy
 8SJ3Zd98CO6FOHA1FigFyZahVsme+T0GsS3/OF1kjrtMktoREr8t0rK0yKpCTYVdlkHadxmR
 Qs5xLzW1RqKlrNigKHI2yhgpMwrpzS+67F1biT41227sqFzW9urEl/jqGJXaB6GV+SRKSHN+
 ubWXgE1NkmfAMeyJPKojNT7ReL6eh3BNB/Xh1vQJew+AE50EP7o36UXghoUktnx6cTkge0ZS
 qgxuhN33cCOU36pWQhPqVSlLTZQJVxuCmlaHbYWvye7bBOhmiuNKhOzb3FcgT7kBDQRa5zq1
 AQgAyRq/7JZKOyB8wRx6fHE0nb31P75kCnL3oE+smKW/sOcIQDV3C7mZKLf472MWB1xdr4Tm
 eXeL/wT0QHapLn5M5wWghC80YvjjdolHnlq9QlYVtvl1ocAC28y43tKJfklhHiwMNDJfdZbw
 9lQ2h+7nccFWASNUu9cqZOABLvJcgLnfdDpnSzOye09VVlKr3NHgRyRZa7me/oFJCxrJlKAl
 2hllRLt0yV08o7i14+qmvxI2EKLX9zJfJ2rGWLTVe3EJBnCsQPDzAUVYSnTtqELu2AGzvDiM
 gatRaosnzhvvEK+kCuXuCuZlRWP7pWSHqFFuYq596RRG5hNGLbmVFZrCxQARAQABiQEfBBgB
 CAAJBQJa5zq1AhsMAAoJELxheCPuCwBX2UYH/2kkMC4mImvoClrmcMsNGijcZHdDlz8NFfCI
 gSb3NHkarnA7uAg8KJuaHUwBMk3kBhv2BGPLcmAknzBIehbZ284W7u3DT9o1Y5g+LDyx8RIi
 e7pnMcC+bE2IJExCVf2p3PB1tDBBdLEYJoyFz/XpdDjZ8aVls/pIyrq+mqo5LuuhWfZzPPec
 9EiM2eXpJw+Rz+vKjSt1YIhg46YbdZrDM2FGrt9ve3YaM5H0lzJgq/JQPKFdbd5MB0X37Qc+
 2m/A9u9SFnOovA42DgXUyC2cSbIJdPWOK9PnzfXqF3sX9Aol2eLUmQuLpThJtq5EHu6FzJ7Y
 L+s0nPaNMKwv/Xhhm6Y=
Message-ID: <a688793b-f7e8-18a4-3eb2-877f1522d8f3@kernel.org>
Date: Tue, 16 Jul 2019 00:13:23 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190716040441.12101-1-sashal@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_211327_207806_B34E4D8E 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (franksinankaya[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-acpi@vger.kernel.org, linux-kernel@microsoft.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 stable@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/16/2019 12:04 AM, Sasha Levin wrote:
> ACPI_IORT lost it's explicit dependency on PCI in c6bb8f89fa6df
> ("ARM64/irqchip: Update ACPI_IORT symbol selection logic") where the
> author has relied on the general dependency of ACPI on PCI.
> 
> However, that dependency was finally removed in 5d32a66541c4 ("PCI/ACPI:
> Allow ACPI to be built without CONFIG_PCI set") and now ACPI_IORT breaks
> when we try and build it without PCI support.
> 
> This patch brings back the explicit dependency of ACPI_IORT on PCI.
> 
> Fixes: 5d32a66541c4 ("PCI/ACPI: Allow ACPI to be built without CONFIG_PCI set")
> Cc: stable@kernel.org
> Signed-off-by: Sasha Levin <sashal@kernel.org>

Do you have more detail on what really is broken without this patch?

It should be possible to build IORT table without PCI.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
