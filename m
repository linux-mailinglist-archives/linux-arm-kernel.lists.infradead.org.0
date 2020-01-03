Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E8E12FC69
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 19:24:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epmhfYZWIWDJca9M78sxlqAYiuYOtBSovP3UgVKBO04=; b=HXZR/GoO35Imxm
	ygRwZHM/Zx5LGJhJA+xQUQlG17gpypfi1egSoofyQV6JIdESFA9E1Pi++dke+/GtsVDkMZJ7mor6d
	/2cH+paRJkrj//QMqm8S3Jk/zzA6UMsrVfM8qiwyTzBNarD/7mvhBydwoudaifI5i8R9kR9VPK9oj
	1ljcmntLULBanfGUQnJd8D8rRsvpvFgUROWB6jgJz2A0665yKC32ZYp2tLKOMf+o2Vu3g6g/mryPi
	VyC9IhTXYz9F+NKCAwfhLjfJkHdkZXMplbVlz8IYznl580BYV0TyT06KXuni/v6NYHsEwDd9u+Er/
	89F8OHU6yMZRCKG2DN2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inRcX-00027J-41; Fri, 03 Jan 2020 18:24:25 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inRc1-0001il-VZ
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 18:23:55 +0000
Received: by mail-pl1-x641.google.com with SMTP id c23so19324420plz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 10:23:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZdYMbHHuye3OxN4qNu4WXkvcF4kb0+ArW4ikmrpnkyg=;
 b=RRhwoNEHNKdZBed3MGjUbtv4ggZsqjGlhjOsqRC3gyMxCSlk479RhFNvaVHNh/0YVP
 16loWVe06uuTxhDS8wWEuQvhqE4UCs3fPOrOslkjLdZUpa75KxTZjuFrZynCsn+73EL+
 KdHNJyjEHr9En45M14OnGXJ9FkyA30+G7YLcpK+UcEgR7dkwsn87Gyy7ICE1WQhh0f5f
 AQ5G/uo3yxH3xDpfsSlxb2VWMWlCvYeynRcgYfYrW0H6YQMx5Dbge2VystSvTKORHR8d
 o3bfRs6wD7KWluSdTar7EEPHvwlgg5MQHCKbVQTR+zQTuytFmPzTUT5ybLukb5xnwzVn
 rdMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZdYMbHHuye3OxN4qNu4WXkvcF4kb0+ArW4ikmrpnkyg=;
 b=I+cvf7WFVCqzrDQ4snTRYtKOai+MKxdgKxQJ79UkUycnRe4Z763nE6bw0FBJtUQJx3
 1byCof8xXEQtTTj0s4uWZSHLcmY6vwlxiDvcGXiHxLFsP3YAny3jzlQZ4E55kJONXXJL
 turhkKnGSvihsu9LtoSLVR7N6v02xwUtNBsonOyAyndRdzkOWBr8Rp958O1Pwb4MKazI
 1tUoIzFdPTTAshjGQI5cbwSKNRPkuN3yg4WuzGwPybRDBS1Z2FKk6cS8znv7RSyR+AYh
 5dH0sjlyj1PPB1AA5sb19xq8ZJ9ECzz2NP2lKLjJ9BlP8Z+UDtwtaNaTzkBDKGZr7kPC
 IALw==
X-Gm-Message-State: APjAAAWnRt36KoXbFadDxWGpXcDVwNbn+lSz7JhT4e7JbvkO0Q9r1/UU
 U7/up9oIoyrt1qHRhxgrmio=
X-Google-Smtp-Source: APXvYqzQdQ96R77JEZw2yZkP47/YvYHEZbW7XKu5xhz3IWJ0sF1759VsIGbrWG0DdSZEKyLBuEgzew==
X-Received: by 2002:a17:902:8a8c:: with SMTP id
 p12mr79573395plo.6.1578075832528; 
 Fri, 03 Jan 2020 10:23:52 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id l8sm15433322pjy.24.2020.01.03.10.23.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 10:23:52 -0800 (PST)
Date: Fri, 3 Jan 2020 10:23:49 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Patrice Chotard <patrice.chotard@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] tty: st-asc: switch to using devm_fwnode_gpiod_get()
Message-ID: <20200103182349.GE8314@dtor-ws>
References: <20200103012053.GA1968@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200103012053.GA1968@dtor-ws>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_102354_243347_47C24D26 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 02, 2020 at 05:20:53PM -0800, Dmitry Torokhov wrote:
> devm_fwnode_get_gpiod_from_child() is going away as the name is too
> unwieldy, let's switch to using the new devm_fwnode_gpiod_get().

Ugh, please ignore this, apparently I haven't compiled this branch...
Additionally, I think we can use standard devm_gpiod_get() here as node
is the same as the device in question.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
