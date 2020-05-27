Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F23C81E5121
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 00:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=49VRoxtdydutzreWLplqGt50MKoI11qk8C3LnaqsRIQ=; b=ezWySyhWbK1pYd
	2jFncTyFSjKFaQCDsBgop7yDDa7MMJAoRUdt1TAx7oo4kLAswZregnCWNcJ3bmjYElMiTWOSaRC3R
	zb8G1Rskzj08s7dzkYncMRmvnTKlJaOw3Rk+zUrltfLZpwfrUE9Iy4bSwRNMdhRZ53cTxEYOuhTMa
	McKFKMGtP8GUWMnIKA29RZM6+Jy6UlhyH7LxFmEnj/bLhxG5enpECfk9a0T6wKX2U1kdPZ0P/hQpo
	lOv3qEd4clPd980PfUUlKAgqJ5AhAmLlVAt/yovjKlgTKOS0qkq5d0XJcHqR+Nxs2SQ7ZbEnWKKQy
	5jOVbjCY46fnZrNZPVmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je4R6-00022u-0Q; Wed, 27 May 2020 22:22:08 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je4Qy-00022S-Bx
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 22:22:01 +0000
Received: by mail-qt1-x842.google.com with SMTP id i68so20689534qtb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 15:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=O0EZFokD4VETW8hilHGvqiWo+AY18MjoTOCmb0j2QP0=;
 b=s2T8fMW9uZpIMjWGcD1ZLd6JVhc9lKb0qUFORy1p1/+usP51vVfE7imxKLhJ4zBXJL
 X0mKKqb2aJCwjf5JmHRE1iXQ5HDbob9tUqqLNARkQ4SclF98OdsiSN0H9L7Jk7a0uncw
 hkkYgpvz1WcPKKAIE5+ZaRlyLjX6J5dcqyx6Jy/iaBSWUW4u7GmrcX5FGeEQ7HFP7/to
 Y3/evqAvP8745WekeffD2AUo5xLwINjsmVd9GSXBQoU8+b3mUNz7Y2lZUf15r70X16G7
 pzzvqB9L/QSRoPPhm2dplOLBsn3NmgGCi0h/ITu1v08iISeTVI8BH0uIZYxV4HlMnPo9
 yrWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=O0EZFokD4VETW8hilHGvqiWo+AY18MjoTOCmb0j2QP0=;
 b=E6tRCFQg5WppPFWqs6zI37oGBY2BQzRXhpomjyNgyxIrrH1ZWHJgJGI6n8+ICbN4yG
 wFJ8m8hrKdXTcuRnYTMRwrdQGB7k0M/Z5OakBmntK4w4UiEBRLAl/BzkcwqaRV9BQT9B
 st7Vo8zrmwialdtaH3MtcFhZKGq0wb6+ToGhnY6mdxsaLqfO19k8wxDvXqHslKYmlnRw
 dEHkugggxgH2/qaKjS1VGPOotNR5jo+MO/pBNF/H+8MO4v9U09hpCFOxJLqdNb8mrKMj
 vrAl51bkGcBpinMwtR9SrERtTvivpqr3BcbxKDEQ6cZXqYp7fhWOuVZW+8oxrK0E47Lh
 hasg==
X-Gm-Message-State: AOAM531706T/MoAgww7QX2LIZgxiJEkKO7Nne296Yzwxb1s7QJSFGnIn
 suQGPs0sBssoZhgx1soQoJs=
X-Google-Smtp-Source: ABdhPJyOgdLDKEz0HQkCQmvOCQBIMuQEJnT24eYzL6cb96knhDKVZ2UOmt/SMnmijP1sKg5MpJ9iCQ==
X-Received: by 2002:ac8:6cf:: with SMTP id j15mr107653qth.143.1590618118847;
 Wed, 27 May 2020 15:21:58 -0700 (PDT)
Received: from ?IPv6:2601:282:803:7700:2840:9137:669d:d1e7?
 ([2601:282:803:7700:2840:9137:669d:d1e7])
 by smtp.googlemail.com with ESMTPSA id v14sm3909630qtj.31.2020.05.27.15.21.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 15:21:58 -0700 (PDT)
Subject: Re: [PATCH v3 0/7] Statsfs: a new ram-based file system for Linux
 kernel statistics
To: Paolo Bonzini <pbonzini@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Emanuele Giuseppe Esposito <eesposit@redhat.com>
References: <20200526110318.69006-1-eesposit@redhat.com>
 <20200526153128.448bfb43@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <6a754b40-b148-867d-071d-8f31c5c0d172@redhat.com>
 <20200527132321.54bcdf04@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <af2ba926-73bc-26c3-7ce7-bd45f657fd85@redhat.com>
From: David Ahern <dsahern@gmail.com>
Message-ID: <b6fa4439-c6b8-63a4-84fd-fbac3d4f10fd@gmail.com>
Date: Wed, 27 May 2020 16:21:55 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <af2ba926-73bc-26c3-7ce7-bd45f657fd85@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_152200_407645_1FA5A80E 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dsahern[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-s390@vger.kernel.org, kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org,
 Emanuele Giuseppe Esposito <e.emanuelegiuseppe@gmail.com>,
 linux-kernel@vger.kernel.org, kvm-ppc@vger.kernel.org,
 Jonathan Adams <jwadams@google.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Rientjes <rientjes@google.com>,
 linux-fsdevel@vger.kernel.org, linux-mips@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/27/20 3:07 PM, Paolo Bonzini wrote:
> I see what you meant now.  statsfs can also be used to enumerate objects
> if one is so inclined (with the prototype in patch 7, for example, each
> network interface becomes a directory).

there are many use cases that have 100's to 1000's have network devices.
Having a sysfs entry per device already bloats memory usage for these
use cases; another filesystem with an entry per device makes that worse.
Really the wrong direction for large scale systems.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
