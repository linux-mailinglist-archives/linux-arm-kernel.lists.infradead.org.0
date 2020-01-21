Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CF9144042
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 16:11:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AnCyqBvMePVisarEJtKp1pPEZuVtcgyK07OHCcPaTb4=; b=KggAr6OvRzPiYp
	Z/enbNznrWxWfDkMo9UxSfo/Goeqv8c7tWHDUEzL2vorj5V5Elpy97KD5Cr/L3ToQ2hEsCYQF7X8Z
	xjfmfElaCiJqYF0hXdL6vTF3j5yVh+ncff4wq7ZaS1IUAT5R3Z3WNL1QWdBkrMcw2QVzway/jXc0r
	/uQbnuM037cQogeFyABPTXCZI4z4vZ9wUyJl7IBbehFTuVLd2KwhPv6t5U6iV6nUmfxjVdGtkFjEg
	qsqDVXoh9sUDhvqTvmLZIz51KgIK3C/zasCOWIySIUnxQ14yWndrW+2XP6EFguw57ZZy8dYzO8ZD/
	/na20iP+ME7LlHFHBC2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itvBr-00071v-NH; Tue, 21 Jan 2020 15:11:39 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itvBZ-0006yy-Mh; Tue, 21 Jan 2020 15:11:27 +0000
Received: by mail-wm1-x342.google.com with SMTP id w5so2313358wmi.1;
 Tue, 21 Jan 2020 07:11:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kV29KCb1tTjsoAawp5eJRY4AocgYk483wI8KhDn3Mn0=;
 b=RUX/r9XczXOUQ8uWuvKZBE0mKNBA3OSB7liIzJ9cde+h/JBPVxnlsyHI+9HaqUxGzn
 6yeNjvGkLD2sZLLRct9PvTBZTkHCpMeBPq0ABBHZK5jmDShaa8+7PMnME8xcH9Je/OnY
 GW4kOJYOuoGiYn3jMem/accrJTGgFIKAe4P2m8Je5AjyPOl+gsHDC5IjObvHxbx4Ao4e
 3K5b1jgZHS1jqW2kYjOd56PFBDBdarIM8I/VjrX1FpoLplXu4bIuFbnPaCt+rBmlVm/T
 EwB3t9OyeVSsyosVjzVZ8vCcl8UDJiALvyHjNfh0kzvPEm0l/T0oMwqys25Z9x7uxcBa
 mKxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kV29KCb1tTjsoAawp5eJRY4AocgYk483wI8KhDn3Mn0=;
 b=cUKY7MQYszehfHS5GKWgU6f2YKvOZ/G0QQXK05a6MWZ5xQh6L21g3BQbA5qWf2mGpl
 RqBV0qbJwAIvEcNYFbqe+Qe8zzgxZI5ILCKtyatLi6YmKrnK/wtu8VLD1cFo4jlPsHNX
 F46em0oG7I3uBCmu9o4M/cIqEy6FQu4sGqnZUl9a06sxw8pB42JBJt6E73hvpPpywEeC
 WsdYfyMqxACbfD8ifidJimESKXgBnzFNO2n58tQw1vkq1tVZ7QzMSgxZHpwGa2AtWIw7
 AS0f4DzsBB1rkqMxCHv+GUJCReiF4SiU0Qy+bEBFdJjL7gSD4vopXG6xr/xFvTp61983
 OUcQ==
X-Gm-Message-State: APjAAAXTRiB2vOhoEqpg+ckgZNduwquNg+9ysOiQlc5+i7ruBNux27ps
 x7AAi9Htk4/ys/DiTRj7z9nUO3lO
X-Google-Smtp-Source: APXvYqzVxW20eNVZ9aiYI5P39LBGVZIhsGs+GUktDebjr7JOrRBt1iJHlF1C395ejIGm9PyahohwIg==
X-Received: by 2002:a1c:5f06:: with SMTP id t6mr4912501wmb.32.1579619480435;
 Tue, 21 Jan 2020 07:11:20 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v83sm4639782wmg.16.2020.01.21.07.11.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 07:11:19 -0800 (PST)
To: dafna.hirschfeld@collabora.com
References: <6371f95f-8bf8-47c9-021e-b23006f25405@collabora.com>
Subject: Re: [PATCH v2] dt-bindings: convert rockchip-drm.txt to
 rockchip-drm.yaml
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <573dc6d1-5857-f3ba-a392-67351db727b5@gmail.com>
Date: Tue, 21 Jan 2020 16:11:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <6371f95f-8bf8-47c9-021e-b23006f25405@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_071121_762515_EA5D1B19 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 airlied@linux.ie, dafna3@gmail.com, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, robh+dt@kernel.org, daniel@ffwll.ch,
 kernel@collabora.com, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dafna,


> 
> 
> On 21.01.20 15:03, Rob Herring wrote:
>> On Tue, Jan 21, 2020 at 6:35 AM Dafna Hirschfeld
>> <dafna.hirschfeld@collabora.com> wrote:
>>>
>>> convert the binding file rockchip-drm.txt to yaml format.
>>> This was tested and verified with:
>>> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
>> 
>> Also, make sure just 'make dt_binding_check' passes as that checks the
>> example against all schemas.
> 
> But this also checks the other schemas in general, and when running it, 
> it fails because of bugs in other schemas.


> For example with arm=ARM I get:

Use:

# enable Rockchip arm in menuconfig
make ARCH=arm menuconfig

make ARCH=arm dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml

and not:
arm=ARM


> 
>    DTC     Documentation/devicetree/bindings/clock/qcom,gcc.example.dt.yaml
> Error: 
> Documentation/devicetree/bindings/clock/qcom,gcc.example.dts:111.28-29 
> syntax error
> FATAL ERROR: Unable to parse input tree
> 
> Dafna
> 
>> 
>>> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
>>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
