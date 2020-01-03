Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E1C12FE21
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 21:51:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ieRMtjXnx/5ZVvmAmEpf9EFmIjQq53QnFnuMlQ71ugM=; b=XG3TjPs0nJWo3i
	bA74q56wODiLE9O3PLyReAF7Xz6BrNEBV7xmx41/AVduTMEOJw3Z9VkE81AE6ZeK9ewjvyrJxuidD
	tKdT0WqrwKvHMkDsMfTMS14miCb+xdM2FZ2B5ht0cPuqhwbn8K8V43y28R7XHo2xcOOsyhhyzCEHH
	47aVqmG9L4ni4yzNjyZmD7XZM5Fwy+9fN+6GDYPiU7A1agD49Y3vwHmbkPvscwQxyrMBtr6VzExaj
	U+TiCeEY6IRA0W5PcI1A/5KFHSILZNNsXg2m4lRWni9/SCVcA3GXQmqGk60+DcfX38dOPnNU0Vt9/
	irM9FdBJQ4FSvWDcXFCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inTuC-0000kS-D2; Fri, 03 Jan 2020 20:50:48 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inTu3-0000j4-VC; Fri, 03 Jan 2020 20:50:42 +0000
Received: by mail-pj1-x1043.google.com with SMTP id l35so5147788pje.3;
 Fri, 03 Jan 2020 12:50:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JGc9D5zEn2o0lcVrmYX3RzYiRak+InYhZKaeLJxHuDc=;
 b=OC+9IvFVaC0V+hwAFlKP3lQ+86WDkVT3bIeu8kFJ1J8VBl9vRsLVF66swW5Ed7Rjy6
 C1iemrKCodux9Sofixlv9w5FUuZWH1t2HVskcf881QYTH1GV9KnkTyoiIkyBnpVxb/hK
 QcJ+Za6Rne++DBX6ZBqwhTWn7xF+OJAwCZwWrTkVhxy/wQeBz0UUvE49hGp4lxfe6uOR
 8xJnz3B0IHBKmnvusyGAG/qfywjje/31gBqmB3pWRMcazRIZgv8KDwWJ6g/cp2jGE2M+
 3sgNVeByoVzfnKcZKgwlrpakcoYg63XM58WzMVHdjoDQDdKT7zwOL39FX3iilf7LpT9M
 Wf7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=JGc9D5zEn2o0lcVrmYX3RzYiRak+InYhZKaeLJxHuDc=;
 b=JKO2Szd+YOrfC3cRc+Ael/qjPINuVnEV43KVTPJ3SCrzvCi4yjfqQmFk1OAxkkFBRb
 GZyLRQ0QSMaXlEb4tDgQZEZNh8K9Eq/sHoOK4k/uE5rNtT7iyjcbJ/TJnt4KSlrwOHfO
 VX6rO02JVfi7EYZ9ptpvZVWuLh9uO8HrZdk2BLjAR3ua9cLTJ/UA3v8c50cUCq1qNxbg
 JZ+ih2YcJYh4mgP8jKmb97R+FtWn3ipTl+SFfA515EW1OnSWaCieUOOUD5iuJtxLiY/a
 mCPBNKvM7/vfS9TikshA7zfmw8jhsM9kK2hmi6Jvpw2cGIjVx0VJ+sbaj8XiWlh58Jih
 WALQ==
X-Gm-Message-State: APjAAAWxpXpq/g6byHoSBiWSUk4VNgrtnDUDE471NUq+oCXud+7kch7V
 3fF97LSSSoRTcS27vpVaTE3RRT6a
X-Google-Smtp-Source: APXvYqyskQdIKnfAyC9L13L+zG+g4mS3D5jHlvCY+EYdgx82n8fk2XrounkjXjhTbqwnjZz3xG5gdQ==
X-Received: by 2002:a17:90a:246c:: with SMTP id
 h99mr29191034pje.134.1578084639116; 
 Fri, 03 Jan 2020 12:50:39 -0800 (PST)
Received: from [10.67.50.49] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id o17sm15361533pjq.1.2020.01.03.12.50.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Jan 2020 12:50:38 -0800 (PST)
Subject: Re: [PATCH net-next] net: dsa: Remove indirect function call for flow
 dissection
To: Vladimir Oltean <olteanv@gmail.com>
References: <20200102233657.12933-1-f.fainelli@gmail.com>
 <CA+h21hrLO2Nfryu74Joj-T3-ithgoSFOQZsw4Z5QWOnhttvGiA@mail.gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 G10n8gCguORqNGMsVRxrlLs7/himep7MrCc=
Message-ID: <91eb2720-d933-f1fd-8d50-e9a81434545b@gmail.com>
Date: Fri, 3 Jan 2020 12:50:35 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CA+h21hrLO2Nfryu74Joj-T3-ithgoSFOQZsw4Z5QWOnhttvGiA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_125040_031110_0256EF7E 
X-CRM114-Status: GOOD (  24.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: Andrew Lunn <andrew@lunn.ch>, Song Liu <songliubraving@fb.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Alexander Lobakin <alobakin@dlink.ru>,
 Yoshiki Komachi <komachi.yoshiki@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Stanislav Fomichev <sdf@google.com>, Matteo Croce <mcroce@redhat.com>,
 Petar Penkov <ppenkov@google.com>, Jakub Sitnicki <jakub@cloudflare.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev <netdev@vger.kernel.org>,
 Paul Blakey <paulb@mellanox.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/2/20 4:19 PM, Vladimir Oltean wrote:
> Hi Florian,
> 
> On Fri, 3 Jan 2020 at 01:39, Florian Fainelli <f.fainelli@gmail.com> wrote:
>>
>> We only need "static" information to be given for DSA flow dissection,
>> so replace the expensive call to .flow_dissect() with an integer giving
>> us the offset into the packet array of bytes that we must de-reference
> 
> packet array? packed array?

Yes, packet array skb->data[] if you prefe

> 
>> to obtain the protocol number. The overhead was alreayd available from
> 
> already
> 
>> the dsa_device_ops structure so use that directly.
>>
>> The presence of a flow_dissect callback used to indicate that the DSA
>> tagger supported returning that information,we now encode this with a
>> proto_off value of DSA_PROTO_OFF_UNPSEC if the tagger does not support
> 
> UNSPEC
> 
>> providing that information yet.
>>
>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
>> ---
> 
> Unfortunately I don't really understand the DSA implementations of flow_dissect.
> Is proto_off supposed to mean "the __be16 pointer difference A - B
> between A. the position of the real EtherType and B. the current
> skb->data (aka ETH_HLEN bytes into the frame, aka 2 bytes after the
> normal EtherType was supposed to be)"?
> Otherwise said, the offset in bytes between the real EtherType
> position and skb->data is 2 * (proto_off + 1).> Furthermore, the offset in bytes is exactly equal to the tagger
> overhead in bytes, unless it's a tag that doesn't push the EtherType
> to the right, such as the trailer tag.

The call path is the following on TX (e.g.: when you run a DHCP client),
so this is always hit for raw packets:

__sys_sendto
  packet_sendmsg
    packet_parse_headers
       __skb_flow_dissect

and on RX this is not hit by default until you configure a RFS map on
your DSA master network device (more on that below), then the call stack is:

napi_complete_done
  gro_normal_list
     netif_receive_skb_list_internal
        get_rps_cpu
           skb_get_hash
              __skb_get_hash
                  __skb_flow_dissect

and this is called from the DSA master's RX path, so with an Ethernet
frame that has the DSA switch tag, and for which eth_type_trans() has
already been called so the SKB has already been pulled by ETH_HLEN and
skb->protocol is ETH_P_XDSA.

I don't think your formula works for EDSA which has an EtherType, but
this would probably work for all tags we currently support except trailer.

proto = (__be16 *)(skb->data)[overhead / 2 - 1];

> 
> If the above is indeed correct, can you just skip DSA_PROTO_OFF_UNSPEC
> and add proper proto_off values "in blind" for all taggers? I think
> it's rather safe to assume that they all push the EtherType to the
> right with the exception of the trailer tag, which will have an offset
> of -1 in terms of __be16 pointers, by the way (so your -1 encoding of
> DSA_PROTO_OFF_UNSPEC won't work for it anyway).
> 
> Also, documenting the unit of measurement for proto_off would really
> go a long way.
> 
> What is a good test that the flow_dissector does what it's supposed to
> do with DSA?

The commit that introduced flow dissection meant to fix it for the DSA
master network device (as you can see from the call trace), and this was
presumably meant to be used to steer traffic onto different RX or TX
queues on the DSA master, which is IMHO the wrong location where it
should be done for a number of reasons, but mainly because DSA slave
network devices can inherit the number of RX queues of their DSA master
and you can perform RFS there, in a standard way, without requiring
further changes down net/core/flow_dissect.c.

I don't think anyone except Alexander did serious investigation this.
For now, what I am interested in is reducing the amount of technical
debt and expensive function calls.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
