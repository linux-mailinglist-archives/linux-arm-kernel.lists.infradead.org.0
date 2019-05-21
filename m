Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 381D524600
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 04:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/HUD+YstVctoUfA07+xBxGO7FPCQlxfbCksaPh9hy8=; b=RJmEQAwdsL8yjk
	IkmzEI+rwB1JN7sbUCpa+GVKWcHhCobgn9BzRHSvYcrTtA0YdyyksasbHbrc7PSXgykqJBXsbjVt9
	AMXJ4k/ZAESb8n2mq0Vrh5ALeChaA2bb1II2Yn/ejBhX9fNN5uCdy5lptAdwiJQ3Py8wAN62EvPqb
	d/hCYmxXgfydrytnvv/U7dkwMqKicyGZR2Mli4nJxXfGpymbKipIV6Vg+83M7aGCqdjmv4RlVI1xm
	2gJ5F7wr5VsSsV7guEzrr5v4+IJeA4fTkMQ1WcaRDbUsfOGdh+UYEr/4fT9wYPoHI0cWtjSisn5zb
	9jzWz0drwDNsB/o4gK1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSuXu-0008VY-Lr; Tue, 21 May 2019 02:30:30 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSuXh-0008Ui-Di
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 02:30:19 +0000
Received: by mail-io1-xd42.google.com with SMTP id a17so12682859iot.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 19:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7SgdozFln6N4cKOXj579GcIC6rtza9ecdWL5Wy3TukE=;
 b=nmhwmpIqEdDndur2ChAsWeETvv5l0ZvTBJEtb370hddhGnIxxPPS1QXvF6c0TUXszP
 Yr7EU9Sh4VKHnget+n7Pms3+v3IYuUFGauOnG3iEQESd5l3m1KSETSuhQO5hYGZ1NfHt
 LPiqwzXwYjz5n+bQKEtV3fApV8heGjkpZKbic7oS1/rb9uqKH7lXjUbPcj+woOxmTg4Q
 m0HNFY+GxkdFjyX9PGuOXsaiLoB1kwoZ3BPYPhVnwY5OaAYxdpnZTJTycgmKzxIFJ/Di
 1YbAfj1rHtpuQR8vsAEarxyVT+rLh4FomGP4y8JtjYHxGkxYOASMrUtf7pHzRowINwLc
 5P4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7SgdozFln6N4cKOXj579GcIC6rtza9ecdWL5Wy3TukE=;
 b=nhu3Dj1ETTlg98Ofg+GHZad0r4W3qysg/62p0XTMAcv1IICwvHc3MjHN0lanxxcYj0
 JIut5vmXRg1zkFidYUN+OH5tFIOA6oWxC+tC4+MSnFJbmMiWTJugcd9tK8ciNUiFHft2
 t0fa+qe6/o1HxEGziephqwIA7LtrrvseHR1krAwlHlM9zQLJ7PqFaNKO2tWdbsmSYH/m
 coFfgtL9linSWzqdRb/0zMfqeh3sqT8NbaPtwsSBxom0e1iMb2LgSxdFxL2MP4C005n1
 fG0Wohdtx3sK8kXsLuMJb4dbBT6aGFSCYKzuTOjUv3SNtQmP7/THgJ8kfQhPU3xI1IMM
 D0rg==
X-Gm-Message-State: APjAAAVDP5K4MxWkhnUI/YZKSsxbsRjLZhujNb79NtUiMZOIzDrmohu/
 VVdu6lfPo8E8sCUIAZO5aEDleQ==
X-Google-Smtp-Source: APXvYqz9vj/PZiRmzYCXa+PAsNaZto+wgavDJl397bLT75uosm0y+5EYz+JwQEdkwKsy3yJZG/Ij5A==
X-Received: by 2002:a5e:9907:: with SMTP id t7mr4471913ioj.24.1558405816298;
 Mon, 20 May 2019 19:30:16 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id c3sm5748728iob.80.2019.05.20.19.30.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 19:30:15 -0700 (PDT)
Subject: Re: [PATCH 1/8] net: qualcomm: rmnet: fix struct rmnet_map_header
To: Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>
References: <20190520135354.18628-1-elder@linaro.org>
 <20190520135354.18628-2-elder@linaro.org>
 <b0edef36555877350cfbab2248f8baac@codeaurora.org>
 <81fd1e01-b8e3-f86a-fcc9-2bcbc51bd679@linaro.org>
 <d90f8ccdc1f76f9166f269eb71a14f7f@codeaurora.org>
From: Alex Elder <elder@linaro.org>
Message-ID: <cd839826-639d-2419-0941-333055e26e37@linaro.org>
Date: Mon, 20 May 2019 21:30:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <d90f8ccdc1f76f9166f269eb71a14f7f@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_193017_531624_0F114111 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: syadagir@codeaurora.org, ejcaruso@google.com, arnd@arndb.de,
 netdev@vger.kernel.org, ilias.apalodimas@linaro.org,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, bjorn.andersson@linaro.org,
 david.brown@linaro.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 davem@davemloft.net, cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8yMC8xOSA4OjMyIFBNLCBTdWJhc2ggQWJoaW5vdiBLYXNpdmlzd2FuYXRoYW4gd3JvdGU6
Cj4+Cj4+IElmwqB5b3XCoGFyZcKgdGVsbGluZ8KgbWXCoHRoYXTCoHRoZcKgY29tbWFuZC9kYXRh
wqBmbGFnwqByZXNpZGVzwqBhdMKgYml0Cj4+IDfCoG9mwqB0aGXCoGZpcnN0wqBieXRlLMKgScKg
d2lsbMKgdXBkYXRlwqB0aGXCoGZpZWxkwqBtYXNrc8KgaW7CoGHCoGxhdGVyCj4+IHBhdGNowqBp
bsKgdGhpc8Kgc2VyaWVzwqB0b8KgcmVmbGVjdMKgdGhhdC4KPj4KPiAKPiBIaWdoZXLCoG9yZGVy
wqBiaXTCoGlzwqBDb21tYW5kwqAvwqBEYXRhLgoKU28gd2hhdCB0aGlzIG1lYW5zIGlzIHRoYXQg
dG8gZ2V0IHRoZSBjb21tYW5kL2RhdGEgYml0IHdlIHVzZToKCglmaXJzdF9ieXRlICYgMHg4MAoK
SWYgdGhhdCBpcyBjb3JyZWN0IEkgd2lsbCByZW1vdmUgdGhpcyBwYXRjaCBmcm9tIHRoZSBzZXJp
ZXMgYW5kCndpbGwgdXBkYXRlIHRoZSBzdWJzZXF1ZW50IHBhdGNoZXMgc28gYml0IDcgaXMgdGhl
IGNvbW1hbmQgYml0LApiaXQgNiBpcyByZXNlcnZlZCwgYW5kIGJpdHMgMC01IGFyZSB0aGUgcGFk
IGxlbmd0aC4KCkkgd2lsbCBwb3N0IGEgdjIgb2YgdGhlIHNlcmllcyB3aXRoIHRoZXNlIGNoYW5n
ZXMsIGFuZCB3aWxsCmluY29ycG9yYXRlIEJqb3JuJ3MgIlJldmlld2VkLWJ5Ii4KCgkJCQkJLUFs
ZXgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
